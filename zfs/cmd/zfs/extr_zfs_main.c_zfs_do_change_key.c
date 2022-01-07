
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ;
 int ZFS_PROP_KEYSTATUS ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int * fnvlist_alloc () ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 int optarg ;
 scalar_t__ optind ;
 int optopt ;
 int parseprop (int *,int ) ;
 int stderr ;
 int usage (scalar_t__) ;
 int zfs_close (int *) ;
 int zfs_crypto_load_key (int *,scalar_t__,int *) ;
 int zfs_crypto_rewrap (int *,int *,scalar_t__) ;
 int * zfs_open (int ,char*,int) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;
 int zfs_refresh_properties (int *) ;

__attribute__((used)) static int
zfs_do_change_key(int argc, char **argv)
{
 int c, ret;
 uint64_t keystatus;
 boolean_t loadkey = B_FALSE, inheritkey = B_FALSE;
 zfs_handle_t *zhp = ((void*)0);
 nvlist_t *props = fnvlist_alloc();

 while ((c = getopt(argc, argv, "lio:")) != -1) {
  switch (c) {
  case 'l':
   loadkey = B_TRUE;
   break;
  case 'i':
   inheritkey = B_TRUE;
   break;
  case 'o':
   if (!parseprop(props, optarg)) {
    nvlist_free(props);
    return (1);
   }
   break;
  default:
   (void) fprintf(stderr,
       gettext("invalid option '%c'\n"), optopt);
   usage(B_FALSE);
  }
 }

 if (inheritkey && !nvlist_empty(props)) {
  (void) fprintf(stderr,
      gettext("Properties not allowed for inheriting\n"));
  usage(B_FALSE);
 }

 argc -= optind;
 argv += optind;

 if (argc < 1) {
  (void) fprintf(stderr, gettext("Missing dataset argument\n"));
  usage(B_FALSE);
 }

 if (argc > 1) {
  (void) fprintf(stderr, gettext("Too many arguments\n"));
  usage(B_FALSE);
 }

 zhp = zfs_open(g_zfs, argv[argc - 1],
     ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
 if (zhp == ((void*)0))
  usage(B_FALSE);

 if (loadkey) {
  keystatus = zfs_prop_get_int(zhp, ZFS_PROP_KEYSTATUS);
  if (keystatus != ZFS_KEYSTATUS_AVAILABLE) {
   ret = zfs_crypto_load_key(zhp, B_FALSE, ((void*)0));
   if (ret != 0) {
    nvlist_free(props);
    zfs_close(zhp);
    return (-1);
   }
  }


  zfs_refresh_properties(zhp);
 }

 ret = zfs_crypto_rewrap(zhp, props, inheritkey);
 if (ret != 0) {
  nvlist_free(props);
  zfs_close(zhp);
  return (-1);
 }

 nvlist_free(props);
 zfs_close(zhp);
 return (0);
}
