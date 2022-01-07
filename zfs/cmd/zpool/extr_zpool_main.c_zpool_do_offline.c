
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int vdev_aux_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int VDEV_AUX_EXTERNAL ;
 int VDEV_AUX_EXTERNAL_PERSIST ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (scalar_t__) ;
 int zpool_close (int *) ;
 int * zpool_open (int ,char*) ;
 scalar_t__ zpool_vdev_fault (int *,scalar_t__,int ) ;
 scalar_t__ zpool_vdev_offline (int *,char*,scalar_t__) ;
 scalar_t__ zpool_vdev_path_to_guid (int *,char*) ;

int
zpool_do_offline(int argc, char **argv)
{
 int c, i;
 char *poolname;
 zpool_handle_t *zhp;
 int ret = 0;
 boolean_t istmp = B_FALSE;
 boolean_t fault = B_FALSE;


 while ((c = getopt(argc, argv, "ft")) != -1) {
  switch (c) {
  case 'f':
   fault = B_TRUE;
   break;
  case 't':
   istmp = B_TRUE;
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
  (void) fprintf(stderr, gettext("missing pool name\n"));
  usage(B_FALSE);
 }
 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing device name\n"));
  usage(B_FALSE);
 }

 poolname = argv[0];

 if ((zhp = zpool_open(g_zfs, poolname)) == ((void*)0))
  return (1);

 for (i = 1; i < argc; i++) {
  if (fault) {
   uint64_t guid = zpool_vdev_path_to_guid(zhp, argv[i]);
   vdev_aux_t aux;
   if (istmp == B_FALSE) {

    aux = VDEV_AUX_EXTERNAL_PERSIST;
   } else {
    aux = VDEV_AUX_EXTERNAL;
   }

   if (guid == 0 || zpool_vdev_fault(zhp, guid, aux) != 0)
    ret = 1;
  } else {
   if (zpool_vdev_offline(zhp, argv[i], istmp) != 0)
    ret = 1;
  }
 }

 zpool_close(zhp);

 return (ret);
}
