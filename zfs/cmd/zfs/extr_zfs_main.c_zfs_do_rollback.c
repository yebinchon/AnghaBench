
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int cb_recurse; int cb_doclones; char* cb_target; scalar_t__ cb_create; int cb_error; void* cb_first; int member_0; } ;
typedef TYPE_1__ rollback_cbdata_t ;
typedef int parentname ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_CREATETXG ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_SNAPSHOT ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int rollback_check ;
 int stderr ;
 int strlcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int usage (void*) ;
 int verify (int ) ;
 int zfs_close (int *) ;
 int zfs_iter_bookmarks (int *,int ,TYPE_1__*) ;
 int zfs_iter_snapshots (int *,void*,int ,TYPE_1__*,scalar_t__,int ) ;
 int * zfs_open (int ,char*,int ) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;
 int zfs_rollback (int *,int *,void*) ;

__attribute__((used)) static int
zfs_do_rollback(int argc, char **argv)
{
 int ret = 0;
 int c;
 boolean_t force = B_FALSE;
 rollback_cbdata_t cb = { 0 };
 zfs_handle_t *zhp, *snap;
 char parentname[ZFS_MAX_DATASET_NAME_LEN];
 char *delim;
 uint64_t min_txg = 0;


 while ((c = getopt(argc, argv, "rRf")) != -1) {
  switch (c) {
  case 'r':
   cb.cb_recurse = 1;
   break;
  case 'R':
   cb.cb_recurse = 1;
   cb.cb_doclones = 1;
   break;
  case 'f':
   force = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing dataset argument\n"));
  usage(B_FALSE);
 }
 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }


 if ((snap = zfs_open(g_zfs, argv[0], ZFS_TYPE_SNAPSHOT)) == ((void*)0))
  return (1);


 (void) strlcpy(parentname, argv[0], sizeof (parentname));
 verify((delim = strrchr(parentname, '@')) != ((void*)0));
 *delim = '\0';
 if ((zhp = zfs_open(g_zfs, parentname, ZFS_TYPE_DATASET)) == ((void*)0)) {
  zfs_close(snap);
  return (1);
 }





 cb.cb_target = argv[0];
 cb.cb_create = zfs_prop_get_int(snap, ZFS_PROP_CREATETXG);
 cb.cb_first = B_TRUE;
 cb.cb_error = 0;

 if (cb.cb_create > 0)
  min_txg = cb.cb_create;

 if ((ret = zfs_iter_snapshots(zhp, B_FALSE, rollback_check, &cb,
     min_txg, 0)) != 0)
  goto out;
 if ((ret = zfs_iter_bookmarks(zhp, rollback_check, &cb)) != 0)
  goto out;

 if ((ret = cb.cb_error) != 0)
  goto out;




 ret = zfs_rollback(zhp, snap, force);

out:
 zfs_close(snap);
 zfs_close(zhp);

 if (ret == 0)
  return (0);
 else
  return (1);
}
