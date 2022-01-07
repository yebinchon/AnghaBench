
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int snapshot ;
typedef int snapbase ;
typedef int nvlist_t ;
typedef int dataset ;
typedef int clonesnap ;
typedef int clone ;
typedef int bookmark ;
typedef int backup ;


 int ARRAY_SIZE (size_t*) ;
 int B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_OST_ZFS ;
 scalar_t__ ZFS_ERR_IOC_CMD_UNAVAIL ;
 unsigned int ZFS_IOC_FIRST ;
 unsigned int ZFS_IOC_LAST ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fnvlist_add_boolean (int *,char*) ;
 int * fnvlist_alloc () ;
 int fprintf (int ,char*,...) ;
 size_t* ioc_skip ;
 scalar_t__* ioc_tested ;
 scalar_t__ ioctl (int ,unsigned int,TYPE_1__*) ;
 int lzc_create (char*,int ,int *,int *,int ) ;
 int lzc_destroy_snaps (int *,int ,int *) ;
 int mkstemp (char*) ;
 int nvlist_free (int *) ;
 int snprintf (char*,int,char*,char const*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int strlcpy (char*,char const*,int) ;
 int test_bookmark (char const*,char*,char*) ;
 int test_change_key (char*) ;
 int test_channel_program (char const*) ;
 int test_clone (char*,char*) ;
 int test_create (char*) ;
 int test_destroy_bookmarks (char const*,char*) ;
 int test_destroy_snaps (char const*,char*) ;
 int test_get_bookmark_props (char*) ;
 int test_get_bookmarks (char*) ;
 int test_get_holds (char*) ;
 int test_hold (char const*,char*) ;
 int test_load_key (char*) ;
 int test_log_history (char const*) ;
 int test_pool_checkpoint (char const*) ;
 int test_pool_discard_checkpoint (char const*) ;
 int test_pool_reopen (char const*) ;
 int test_pool_sync (char const*) ;
 int test_recv_new (char*,int) ;
 int test_redact (char*,char*) ;
 int test_release (char const*,char*) ;
 int test_remap (char*) ;
 int test_rollback (char*,char*) ;
 int test_send_new (char*,int) ;
 int test_send_space (char*,char*) ;
 int test_snapshot (char const*,char*) ;
 int test_space_snaps (char*) ;
 int test_unload_key (char*) ;
 int test_vdev_initialize (char const*) ;
 int test_vdev_trim (char const*) ;
 int test_wait (char const*) ;
 int unlink (char*) ;
 int zfs_destroy (char*) ;
 int zfs_fd ;

__attribute__((used)) static void
zfs_ioc_input_tests(const char *pool)
{
 char filepath[] = "/tmp/ioc_test_file_XXXXXX";
 char dataset[ZFS_MAX_DATASET_NAME_LEN];
 char snapbase[ZFS_MAX_DATASET_NAME_LEN + 32];
 char snapshot[ZFS_MAX_DATASET_NAME_LEN + 32];
 char bookmark[ZFS_MAX_DATASET_NAME_LEN + 32];
 char backup[ZFS_MAX_DATASET_NAME_LEN];
 char clone[ZFS_MAX_DATASET_NAME_LEN];
 char clonesnap[ZFS_MAX_DATASET_NAME_LEN + 32];
 int tmpfd, err;




 (void) snprintf(dataset, sizeof (dataset), "%s/test-fs", pool);
 (void) snprintf(snapbase, sizeof (snapbase), "%s@snapbase", dataset);
 (void) snprintf(snapshot, sizeof (snapshot), "%s@snapshot", dataset);
 (void) snprintf(bookmark, sizeof (bookmark), "%s#bookmark", dataset);
 (void) snprintf(clone, sizeof (clone), "%s/test-fs-clone", pool);
 (void) snprintf(clonesnap, sizeof (clonesnap), "%s@snap", clone);
 (void) snprintf(backup, sizeof (backup), "%s/backup", pool);

 err = lzc_create(dataset, DMU_OST_ZFS, ((void*)0), ((void*)0), 0);
 if (err) {
  (void) fprintf(stderr, "could not create '%s': %s\n",
      dataset, strerror(errno));
  exit(2);
 }

 tmpfd = mkstemp(filepath);
 if (tmpfd < 0) {
  (void) fprintf(stderr, "could not create '%s': %s\n",
      filepath, strerror(errno));
  exit(2);
 }





 test_pool_sync(pool);
 test_pool_reopen(pool);
 test_pool_checkpoint(pool);
 test_pool_discard_checkpoint(pool);
 test_log_history(pool);

 test_create(dataset);
 test_snapshot(pool, snapbase);
 test_snapshot(pool, snapshot);

 test_space_snaps(snapshot);
 test_send_space(snapbase, snapshot);
 test_send_new(snapshot, tmpfd);
 test_recv_new(backup, tmpfd);

 test_bookmark(pool, snapshot, bookmark);
 test_get_bookmarks(dataset);
 test_get_bookmark_props(bookmark);
 test_destroy_bookmarks(pool, bookmark);

 test_hold(pool, snapshot);
 test_get_holds(snapshot);
 test_release(pool, snapshot);

 test_clone(snapshot, clone);
 test_snapshot(pool, clonesnap);
 test_redact(snapshot, clonesnap);
 zfs_destroy(clonesnap);
 zfs_destroy(clone);

 test_rollback(dataset, snapshot);
 test_destroy_snaps(pool, snapshot);
 test_destroy_snaps(pool, snapbase);

 test_remap(dataset);
 test_channel_program(pool);

 test_load_key(dataset);
 test_change_key(dataset);
 test_unload_key(dataset);

 test_vdev_initialize(pool);
 test_vdev_trim(pool);

 test_wait(pool);




 zfs_cmd_t zc = {"\0"};

 nvlist_t *snaps = fnvlist_alloc();
 fnvlist_add_boolean(snaps, snapshot);
 (void) lzc_destroy_snaps(snaps, B_FALSE, ((void*)0));
 nvlist_free(snaps);

 (void) zfs_destroy(dataset);
 (void) zfs_destroy(backup);

 (void) close(tmpfd);
 (void) unlink(filepath);




 for (int i = 0; i < ARRAY_SIZE(ioc_skip); i++) {
  if (ioc_tested[ioc_skip[i] - ZFS_IOC_FIRST])
   (void) fprintf(stderr, "cmd %d tested, not skipped!\n",
       (int)(ioc_skip[i] - ZFS_IOC_FIRST));

  ioc_tested[ioc_skip[i] - ZFS_IOC_FIRST] = B_TRUE;
 }

 (void) strlcpy(zc.zc_name, pool, sizeof (zc.zc_name));
 zc.zc_name[sizeof (zc.zc_name) - 1] = '\0';

 for (unsigned ioc = ZFS_IOC_FIRST; ioc < ZFS_IOC_LAST; ioc++) {
  unsigned cmd = ioc - ZFS_IOC_FIRST;

  if (ioc_tested[cmd])
   continue;

  if (ioctl(zfs_fd, ioc, &zc) != 0 &&
      errno != ZFS_ERR_IOC_CMD_UNAVAIL) {
   (void) fprintf(stderr, "cmd %d is missing a test case "
       "(%d)\n", cmd, errno);
  }
 }
}
