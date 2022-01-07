
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {char* fi_uname; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef int u_longlong_t ;
typedef size_t spa_feature_t ;
typedef int propname ;
typedef int nvlist_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;
typedef int DIR ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ ENOENT ;
 scalar_t__ EZFS_INVALIDNAME ;
 int MAXPATHLEN ;
 size_t SPA_FEATURES ;
 int SPA_VERSION_FEATURES ;
 char* VDEV_ALLOC_BIAS_DEDUP ;
 char* VDEV_ALLOC_BIAS_LOG ;
 char* VDEV_ALLOC_BIAS_SPECIAL ;
 char* ZFS_FEATURE_DISABLED ;
 char* ZFS_FEATURE_ENABLED ;
 char* ZFS_MOUNTPOINT_LEGACY ;
 char* ZFS_MOUNTPOINT_NONE ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZPOOL_PROP_ALTROOT ;
 int ZPOOL_PROP_CACHEFILE ;
 int ZPOOL_PROP_TNAME ;
 int ZPOOL_PROP_VERSION ;
 int add_prop_list (char*,char*,int **,scalar_t__) ;
 int add_prop_list_default (char*,char*,int **,scalar_t__) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ libzfs_errno (int ) ;
 int * make_root_vdev (int *,int *,scalar_t__,int,scalar_t__,scalar_t__,int,char**) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int nvlist_remove_all (int *,char*) ;
 int * opendir (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int optopt ;
 int print_vdev_tree (int *,char*,int *,int ,char*,int ) ;
 int printf (char*,char*) ;
 int * readdir (int *) ;
 int snprintf (char*,int,char*,char*,...) ;
 TYPE_1__* spa_feature_table ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (scalar_t__) ;
 int strtoull (char*,char**,int) ;
 int usage (scalar_t__) ;
 int zfs_allocatable_devs (int *) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_mount (int *,int *,int ) ;
 int * zfs_open (int ,char*,int ) ;
 char* zfs_prop_to_name (int ) ;
 int zfs_shareall (int *) ;
 scalar_t__ zpool_create (int ,char*,int *,int *,int *) ;
 int zpool_name_to_prop (char*) ;
 char* zpool_prop_to_name (int ) ;

int
zpool_do_create(int argc, char **argv)
{
 boolean_t force = B_FALSE;
 boolean_t dryrun = B_FALSE;
 boolean_t enable_all_pool_feat = B_TRUE;
 int c;
 nvlist_t *nvroot = ((void*)0);
 char *poolname;
 char *tname = ((void*)0);
 int ret = 1;
 char *altroot = ((void*)0);
 char *mountpoint = ((void*)0);
 nvlist_t *fsprops = ((void*)0);
 nvlist_t *props = ((void*)0);
 char *propval;


 while ((c = getopt(argc, argv, ":fndR:m:o:O:t:")) != -1) {
  switch (c) {
  case 'f':
   force = B_TRUE;
   break;
  case 'n':
   dryrun = B_TRUE;
   break;
  case 'd':
   enable_all_pool_feat = B_FALSE;
   break;
  case 'R':
   altroot = optarg;
   if (add_prop_list(zpool_prop_to_name(
       ZPOOL_PROP_ALTROOT), optarg, &props, B_TRUE))
    goto errout;
   if (add_prop_list_default(zpool_prop_to_name(
       ZPOOL_PROP_CACHEFILE), "none", &props, B_TRUE))
    goto errout;
   break;
  case 'm':

   mountpoint = optarg;
   break;
  case 'o':
   if ((propval = strchr(optarg, '=')) == ((void*)0)) {
    (void) fprintf(stderr, gettext("missing "
        "'=' for -o option\n"));
    goto errout;
   }
   *propval = '\0';
   propval++;

   if (add_prop_list(optarg, propval, &props, B_TRUE))
    goto errout;





   if (zpool_name_to_prop(optarg) == ZPOOL_PROP_VERSION) {
    char *end;
    u_longlong_t ver;

    ver = strtoull(propval, &end, 10);
    if (*end == '\0' &&
        ver < SPA_VERSION_FEATURES) {
     enable_all_pool_feat = B_FALSE;
    }
   }
   if (zpool_name_to_prop(optarg) == ZPOOL_PROP_ALTROOT)
    altroot = propval;
   break;
  case 'O':
   if ((propval = strchr(optarg, '=')) == ((void*)0)) {
    (void) fprintf(stderr, gettext("missing "
        "'=' for -O option\n"));
    goto errout;
   }
   *propval = '\0';
   propval++;






   if (0 == strcmp(optarg,
       zfs_prop_to_name(ZFS_PROP_MOUNTPOINT))) {
    mountpoint = propval;
   } else if (add_prop_list(optarg, propval, &fsprops,
       B_FALSE)) {
    goto errout;
   }
   break;
  case 't':



   if (strchr(optarg, '/') != ((void*)0)) {
    (void) fprintf(stderr, gettext("cannot create "
        "'%s': invalid character '/' in temporary "
        "name\n"), optarg);
    (void) fprintf(stderr, gettext("use 'zfs "
        "create' to create a dataset\n"));
    goto errout;
   }

   if (add_prop_list(zpool_prop_to_name(
       ZPOOL_PROP_TNAME), optarg, &props, B_TRUE))
    goto errout;
   if (add_prop_list_default(zpool_prop_to_name(
       ZPOOL_PROP_CACHEFILE), "none", &props, B_TRUE))
    goto errout;
   tname = optarg;
   break;
  case ':':
   (void) fprintf(stderr, gettext("missing argument for "
       "'%c' option\n"), optopt);
   goto badusage;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   goto badusage;
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name argument\n"));
  goto badusage;
 }
 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing vdev specification\n"));
  goto badusage;
 }

 poolname = argv[0];





 if (strchr(poolname, '/') != ((void*)0)) {
  (void) fprintf(stderr, gettext("cannot create '%s': invalid "
      "character '/' in pool name\n"), poolname);
  (void) fprintf(stderr, gettext("use 'zfs create' to "
      "create a dataset\n"));
  goto errout;
 }


 nvroot = make_root_vdev(((void*)0), props, force, !force, B_FALSE, dryrun,
     argc - 1, argv + 1);
 if (nvroot == ((void*)0))
  goto errout;


 if (!zfs_allocatable_devs(nvroot)) {
  (void) fprintf(stderr, gettext("invalid vdev "
      "specification: at least one toplevel vdev must be "
      "specified\n"));
  goto errout;
 }

 if (altroot != ((void*)0) && altroot[0] != '/') {
  (void) fprintf(stderr, gettext("invalid alternate root '%s': "
      "must be an absolute path\n"), altroot);
  goto errout;
 }





 if (mountpoint == ((void*)0) ||
     (strcmp(mountpoint, ZFS_MOUNTPOINT_LEGACY) != 0 &&
     strcmp(mountpoint, ZFS_MOUNTPOINT_NONE) != 0)) {
  char buf[MAXPATHLEN];
  DIR *dirp;

  if (mountpoint && mountpoint[0] != '/') {
   (void) fprintf(stderr, gettext("invalid mountpoint "
       "'%s': must be an absolute path, 'legacy', or "
       "'none'\n"), mountpoint);
   goto errout;
  }

  if (mountpoint == ((void*)0)) {
   if (altroot != ((void*)0))
    (void) snprintf(buf, sizeof (buf), "%s/%s",
        altroot, poolname);
   else
    (void) snprintf(buf, sizeof (buf), "/%s",
        poolname);
  } else {
   if (altroot != ((void*)0))
    (void) snprintf(buf, sizeof (buf), "%s%s",
        altroot, mountpoint);
   else
    (void) snprintf(buf, sizeof (buf), "%s",
        mountpoint);
  }

  if ((dirp = opendir(buf)) == ((void*)0) && errno != ENOENT) {
   (void) fprintf(stderr, gettext("mountpoint '%s' : "
       "%s\n"), buf, strerror(errno));
   (void) fprintf(stderr, gettext("use '-m' "
       "option to provide a different default\n"));
   goto errout;
  } else if (dirp) {
   int count = 0;

   while (count < 3 && readdir(dirp) != ((void*)0))
    count++;
   (void) closedir(dirp);

   if (count > 2) {
    (void) fprintf(stderr, gettext("mountpoint "
        "'%s' exists and is not empty\n"), buf);
    (void) fprintf(stderr, gettext("use '-m' "
        "option to provide a "
        "different default\n"));
    goto errout;
   }
  }
 }





 if (mountpoint != ((void*)0)) {
  ret = add_prop_list(zfs_prop_to_name(ZFS_PROP_MOUNTPOINT),
      mountpoint, &fsprops, B_FALSE);
  if (ret != 0)
   goto errout;
 }

 ret = 1;
 if (dryrun) {





  (void) printf(gettext("would create '%s' with the "
      "following layout:\n\n"), poolname);

  print_vdev_tree(((void*)0), poolname, nvroot, 0, "", 0);
  print_vdev_tree(((void*)0), "dedup", nvroot, 0,
      VDEV_ALLOC_BIAS_DEDUP, 0);
  print_vdev_tree(((void*)0), "special", nvroot, 0,
      VDEV_ALLOC_BIAS_SPECIAL, 0);
  print_vdev_tree(((void*)0), "logs", nvroot, 0,
      VDEV_ALLOC_BIAS_LOG, 0);

  ret = 0;
 } else {



  spa_feature_t i;
  for (i = 0; i < SPA_FEATURES; i++) {
   char propname[MAXPATHLEN];
   char *propval;
   zfeature_info_t *feat = &spa_feature_table[i];

   (void) snprintf(propname, sizeof (propname),
       "feature@%s", feat->fi_uname);







   if (!nvlist_lookup_string(props, propname, &propval)) {
    if (strcmp(propval, ZFS_FEATURE_DISABLED) == 0)
     (void) nvlist_remove_all(props,
         propname);
   } else if (enable_all_pool_feat) {
    ret = add_prop_list(propname,
        ZFS_FEATURE_ENABLED, &props, B_TRUE);
    if (ret != 0)
     goto errout;
   }
  }

  ret = 1;
  if (zpool_create(g_zfs, poolname,
      nvroot, props, fsprops) == 0) {
   zfs_handle_t *pool = zfs_open(g_zfs,
       tname ? tname : poolname, ZFS_TYPE_FILESYSTEM);
   if (pool != ((void*)0)) {
    if (zfs_mount(pool, ((void*)0), 0) == 0)
     ret = zfs_shareall(pool);
    zfs_close(pool);
   }
  } else if (libzfs_errno(g_zfs) == EZFS_INVALIDNAME) {
   (void) fprintf(stderr, gettext("pool name may have "
       "been omitted\n"));
  }
 }

errout:
 nvlist_free(nvroot);
 nvlist_free(fsprops);
 nvlist_free(props);
 return (ret);
badusage:
 nvlist_free(fsprops);
 nvlist_free(props);
 usage(B_FALSE);
 return (2);
}
