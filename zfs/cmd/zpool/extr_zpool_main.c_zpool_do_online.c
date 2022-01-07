
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef scalar_t__ vdev_state_t ;


 int B_FALSE ;
 scalar_t__ VDEV_STATE_FAULTED ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 int ZFS_ONLINE_EXPAND ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int printf (char*,...) ;
 int stderr ;
 int usage (int ) ;
 int zpool_close (int *) ;
 int * zpool_open (int ,char*) ;
 scalar_t__ zpool_vdev_online (int *,char*,int,scalar_t__*) ;

int
zpool_do_online(int argc, char **argv)
{
 int c, i;
 char *poolname;
 zpool_handle_t *zhp;
 int ret = 0;
 vdev_state_t newstate;
 int flags = 0;


 while ((c = getopt(argc, argv, "e")) != -1) {
  switch (c) {
  case 'e':
   flags |= ZFS_ONLINE_EXPAND;
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
  if (zpool_vdev_online(zhp, argv[i], flags, &newstate) == 0) {
   if (newstate != VDEV_STATE_HEALTHY) {
    (void) printf(gettext("warning: device '%s' "
        "onlined, but remains in faulted state\n"),
        argv[i]);
    if (newstate == VDEV_STATE_FAULTED)
     (void) printf(gettext("use 'zpool "
         "clear' to restore a faulted "
         "device\n"));
    else
     (void) printf(gettext("use 'zpool "
         "replace' to replace devices "
         "that are no longer present\n"));
   }
  } else {
   ret = 1;
  }
 }

 zpool_close(zhp);

 return (ret);
}
