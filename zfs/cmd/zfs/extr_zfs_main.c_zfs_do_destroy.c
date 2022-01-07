
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int zfs_type_t ;
typedef int zfs_handle_t ;
typedef char* u_longlong_t ;
typedef int nvlist_t ;
struct TYPE_8__ {scalar_t__ cb_defer_destroy; char* cb_snapspec; scalar_t__ cb_error; int * cb_nvl; int * cb_batchedsnaps; scalar_t__ cb_doclones; scalar_t__ cb_first; scalar_t__ cb_recurse; int * cb_target; scalar_t__ cb_dryrun; scalar_t__ cb_snapused; scalar_t__ cb_parsable; scalar_t__ cb_verbose; scalar_t__ cb_force; int member_0; } ;
typedef TYPE_1__ destroy_cbdata_t ;
typedef int buf ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZFS_TYPE_VOLUME ;
 int destroy_callback (int *,TYPE_1__*) ;
 int destroy_check_dependent (int *,TYPE_1__*) ;
 int destroy_clones (TYPE_1__*) ;
 int fnvlist_add_boolean (int *,char*) ;
 void* fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 scalar_t__ gather_snapshots (int ,TYPE_1__*) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int lzc_destroy_bookmarks (int *,int *) ;
 scalar_t__ nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 scalar_t__ optind ;
 int optopt ;
 int printf (char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int usage (scalar_t__) ;
 int zfs_bookmark_exists (char*) ;
 int zfs_close (int *) ;
 int zfs_destroy_snaps_nvl (int ,int *,scalar_t__) ;
 char* zfs_get_name (int *) ;
 int zfs_get_type (int *) ;
 int zfs_handle_dup (int *) ;
 scalar_t__ zfs_iter_dependents (int *,scalar_t__,int (*) (int *,TYPE_1__*),TYPE_1__*) ;
 int zfs_nicebytes (scalar_t__,char*,int) ;
 int * zfs_open (int ,char*,int) ;
 int zfs_standard_error (int ,int,char*) ;

__attribute__((used)) static int
zfs_do_destroy(int argc, char **argv)
{
 destroy_cbdata_t cb = { 0 };
 int rv = 0;
 int err = 0;
 int c;
 zfs_handle_t *zhp = ((void*)0);
 char *at, *pound;
 zfs_type_t type = ZFS_TYPE_DATASET;


 while ((c = getopt(argc, argv, "vpndfrR")) != -1) {
  switch (c) {
  case 'v':
   cb.cb_verbose = B_TRUE;
   break;
  case 'p':
   cb.cb_verbose = B_TRUE;
   cb.cb_parsable = B_TRUE;
   break;
  case 'n':
   cb.cb_dryrun = B_TRUE;
   break;
  case 'd':
   cb.cb_defer_destroy = B_TRUE;
   type = ZFS_TYPE_SNAPSHOT;
   break;
  case 'f':
   cb.cb_force = B_TRUE;
   break;
  case 'r':
   cb.cb_recurse = B_TRUE;
   break;
  case 'R':
   cb.cb_recurse = B_TRUE;
   cb.cb_doclones = B_TRUE;
   break;
  case '?':
  default:
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc == 0) {
  (void) fprintf(stderr, gettext("missing dataset argument\n"));
  usage(B_FALSE);
 }
 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 at = strchr(argv[0], '@');
 pound = strchr(argv[0], '#');
 if (at != ((void*)0)) {


  cb.cb_nvl = fnvlist_alloc();

  *at = '\0';
  zhp = zfs_open(g_zfs, argv[0],
      ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
  if (zhp == ((void*)0)) {
   nvlist_free(cb.cb_nvl);
   return (1);
  }

  cb.cb_snapspec = at + 1;
  if (gather_snapshots(zfs_handle_dup(zhp), &cb) != 0 ||
      cb.cb_error) {
   rv = 1;
   goto out;
  }

  if (nvlist_empty(cb.cb_nvl)) {
   (void) fprintf(stderr, gettext("could not find any "
       "snapshots to destroy; check snapshot names.\n"));
   rv = 1;
   goto out;
  }

  if (cb.cb_verbose) {
   char buf[16];
   zfs_nicebytes(cb.cb_snapused, buf, sizeof (buf));
   if (cb.cb_parsable) {
    (void) printf("reclaim\t%llu\n",
        (u_longlong_t)cb.cb_snapused);
   } else if (cb.cb_dryrun) {
    (void) printf(gettext("would reclaim %s\n"),
        buf);
   } else {
    (void) printf(gettext("will reclaim %s\n"),
        buf);
   }
  }

  if (!cb.cb_dryrun) {
   if (cb.cb_doclones) {
    cb.cb_batchedsnaps = fnvlist_alloc();
    err = destroy_clones(&cb);
    if (err == 0) {
     err = zfs_destroy_snaps_nvl(g_zfs,
         cb.cb_batchedsnaps, B_FALSE);
    }
    if (err != 0) {
     rv = 1;
     goto out;
    }
   }
   if (err == 0) {
    err = zfs_destroy_snaps_nvl(g_zfs, cb.cb_nvl,
        cb.cb_defer_destroy);
   }
  }

  if (err != 0)
   rv = 1;
 } else if (pound != ((void*)0)) {
  int err;
  nvlist_t *nvl;

  if (cb.cb_dryrun) {
   (void) fprintf(stderr,
       "dryrun is not supported with bookmark\n");
   return (-1);
  }

  if (cb.cb_defer_destroy) {
   (void) fprintf(stderr,
       "defer destroy is not supported with bookmark\n");
   return (-1);
  }

  if (cb.cb_recurse) {
   (void) fprintf(stderr,
       "recursive is not supported with bookmark\n");
   return (-1);
  }
  if (!zfs_bookmark_exists(argv[0])) {
   (void) fprintf(stderr, gettext("bookmark '%s' "
       "does not exist.\n"), argv[0]);
   return (1);
  }

  nvl = fnvlist_alloc();
  fnvlist_add_boolean(nvl, argv[0]);

  err = lzc_destroy_bookmarks(nvl, ((void*)0));
  if (err != 0) {
   (void) zfs_standard_error(g_zfs, err,
       "cannot destroy bookmark");
  }

  nvlist_free(nvl);

  return (err);
 } else {

  if ((zhp = zfs_open(g_zfs, argv[0], type)) == ((void*)0))
   return (1);

  cb.cb_target = zhp;




  if (!cb.cb_recurse && strchr(zfs_get_name(zhp), '/') == ((void*)0) &&
      zfs_get_type(zhp) == ZFS_TYPE_FILESYSTEM) {
   (void) fprintf(stderr, gettext("cannot destroy '%s': "
       "operation does not apply to pools\n"),
       zfs_get_name(zhp));
   (void) fprintf(stderr, gettext("use 'zfs destroy -r "
       "%s' to destroy all datasets in the pool\n"),
       zfs_get_name(zhp));
   (void) fprintf(stderr, gettext("use 'zpool destroy %s' "
       "to destroy the pool itself\n"), zfs_get_name(zhp));
   rv = 1;
   goto out;
  }




  cb.cb_first = B_TRUE;
  if (!cb.cb_doclones &&
      zfs_iter_dependents(zhp, B_TRUE, destroy_check_dependent,
      &cb) != 0) {
   rv = 1;
   goto out;
  }

  if (cb.cb_error) {
   rv = 1;
   goto out;
  }
  cb.cb_batchedsnaps = fnvlist_alloc();
  if (zfs_iter_dependents(zhp, B_FALSE, destroy_callback,
      &cb) != 0) {
   rv = 1;
   goto out;
  }





  err = destroy_callback(zhp, &cb);
  zhp = ((void*)0);
  if (err == 0) {
   err = zfs_destroy_snaps_nvl(g_zfs,
       cb.cb_batchedsnaps, cb.cb_defer_destroy);
  }
  if (err != 0 || cb.cb_error == B_TRUE)
   rv = 1;
 }

out:
 fnvlist_free(cb.cb_batchedsnaps);
 fnvlist_free(cb.cb_nvl);
 if (zhp != ((void*)0))
  zfs_close(zhp);
 return (rv);
}
