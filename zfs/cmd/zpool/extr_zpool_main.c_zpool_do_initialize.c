
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
struct option {char* member_0; char member_3; int * member_2; int member_1; } ;
typedef scalar_t__ pool_initialize_func_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ POOL_INITIALIZE_CANCEL ;
 scalar_t__ POOL_INITIALIZE_START ;
 scalar_t__ POOL_INITIALIZE_SUSPEND ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int fnvlist_add_boolean (int *,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 char* gettext (char*) ;
 int no_argument ;
 size_t optind ;
 int optopt ;
 int stderr ;
 int usage (scalar_t__) ;
 int zpool_close (int *) ;
 int zpool_collect_leaves (int *,int *,int *) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_initialize (int *,scalar_t__,int *) ;
 int zpool_initialize_wait (int *,scalar_t__,int *) ;
 int * zpool_open (int ,char*) ;

int
zpool_do_initialize(int argc, char **argv)
{
 int c;
 char *poolname;
 zpool_handle_t *zhp;
 nvlist_t *vdevs;
 int err = 0;
 boolean_t wait = B_FALSE;

 struct option long_options[] = {
  {"cancel", no_argument, ((void*)0), 'c'},
  {"suspend", no_argument, ((void*)0), 's'},
  {"wait", no_argument, ((void*)0), 'w'},
  {0, 0, 0, 0}
 };

 pool_initialize_func_t cmd_type = POOL_INITIALIZE_START;
 while ((c = getopt_long(argc, argv, "csw", long_options, ((void*)0))) != -1) {
  switch (c) {
  case 'c':
   if (cmd_type != POOL_INITIALIZE_START &&
       cmd_type != POOL_INITIALIZE_CANCEL) {
    (void) fprintf(stderr, gettext("-c cannot be "
        "combined with other options\n"));
    usage(B_FALSE);
   }
   cmd_type = POOL_INITIALIZE_CANCEL;
   break;
  case 's':
   if (cmd_type != POOL_INITIALIZE_START &&
       cmd_type != POOL_INITIALIZE_SUSPEND) {
    (void) fprintf(stderr, gettext("-s cannot be "
        "combined with other options\n"));
    usage(B_FALSE);
   }
   cmd_type = POOL_INITIALIZE_SUSPEND;
   break;
  case 'w':
   wait = B_TRUE;
   break;
  case '?':
   if (optopt != 0) {
    (void) fprintf(stderr,
        gettext("invalid option '%c'\n"), optopt);
   } else {
    (void) fprintf(stderr,
        gettext("invalid option '%s'\n"),
        argv[optind - 1]);
   }
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name argument\n"));
  usage(B_FALSE);
  return (-1);
 }

 if (wait && (cmd_type != POOL_INITIALIZE_START)) {
  (void) fprintf(stderr, gettext("-w cannot be used with -c or "
      "-s\n"));
  usage(B_FALSE);
 }

 poolname = argv[0];
 zhp = zpool_open(g_zfs, poolname);
 if (zhp == ((void*)0))
  return (-1);

 vdevs = fnvlist_alloc();
 if (argc == 1) {

  nvlist_t *config = zpool_get_config(zhp, ((void*)0));
  nvlist_t *nvroot = fnvlist_lookup_nvlist(config,
      ZPOOL_CONFIG_VDEV_TREE);
  zpool_collect_leaves(zhp, nvroot, vdevs);
 } else {
  for (int i = 1; i < argc; i++) {
   fnvlist_add_boolean(vdevs, argv[i]);
  }
 }

 if (wait)
  err = zpool_initialize_wait(zhp, cmd_type, vdevs);
 else
  err = zpool_initialize(zhp, cmd_type, vdevs);

 fnvlist_free(vdevs);
 zpool_close(zhp);

 return (err);
}
