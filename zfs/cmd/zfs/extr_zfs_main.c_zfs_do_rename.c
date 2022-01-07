
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 scalar_t__ strchr (char*,char) ;
 int usage (scalar_t__) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_create_ancestors (int ,char*) ;
 int zfs_get_type (int *) ;
 scalar_t__ zfs_name_valid (char*,int ) ;
 int * zfs_open (int ,char*,int) ;
 scalar_t__ zfs_rename (int *,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
zfs_do_rename(int argc, char **argv)
{
 zfs_handle_t *zhp;
 int c;
 int ret = 0;
 boolean_t recurse = B_FALSE;
 boolean_t parents = B_FALSE;
 boolean_t force_unmount = B_FALSE;


 while ((c = getopt(argc, argv, "prf")) != -1) {
  switch (c) {
  case 'p':
   parents = B_TRUE;
   break;
  case 'r':
   recurse = B_TRUE;
   break;
  case 'f':
   force_unmount = B_TRUE;
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


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing source dataset "
      "argument\n"));
  usage(B_FALSE);
 }
 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing target dataset "
      "argument\n"));
  usage(B_FALSE);
 }
 if (argc > 2) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 if (recurse && parents) {
  (void) fprintf(stderr, gettext("-p and -r options are mutually "
      "exclusive\n"));
  usage(B_FALSE);
 }

 if (recurse && strchr(argv[0], '@') == 0) {
  (void) fprintf(stderr, gettext("source dataset for recursive "
      "rename must be a snapshot\n"));
  usage(B_FALSE);
 }

 if ((zhp = zfs_open(g_zfs, argv[0], parents ? ZFS_TYPE_FILESYSTEM |
     ZFS_TYPE_VOLUME : ZFS_TYPE_DATASET)) == ((void*)0))
  return (1);


 if (parents && zfs_name_valid(argv[1], zfs_get_type(zhp)) &&
     zfs_create_ancestors(g_zfs, argv[1]) != 0) {
  zfs_close(zhp);
  return (1);
 }

 ret = (zfs_rename(zhp, argv[1], recurse, force_unmount) != 0);

 zfs_close(zhp);
 return (ret);
}
