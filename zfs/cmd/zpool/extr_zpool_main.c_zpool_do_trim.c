
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint64_t ;
struct TYPE_3__ {void* fullpool; int rate; void* secure; } ;
typedef TYPE_1__ trimflags_t ;
struct option {char* member_0; char member_3; int * member_2; int member_1; } ;
typedef int pool_trim_func_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int POOL_TRIM_CANCEL ;
 int POOL_TRIM_START ;
 int POOL_TRIM_SUSPEND ;
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
 int optarg ;
 size_t optind ;
 int optopt ;
 int required_argument ;
 int stderr ;
 int usage (void*) ;
 int zfs_nicestrtonum (int *,int ,int *) ;
 int zpool_close (int *) ;
 int zpool_collect_leaves (int *,int *,int *) ;
 int * zpool_get_config (int *,int *) ;
 int * zpool_open (int ,char*) ;
 int zpool_trim (int *,int ,int *,TYPE_1__*) ;

int
zpool_do_trim(int argc, char **argv)
{
 struct option long_options[] = {
  {"cancel", no_argument, ((void*)0), 'c'},
  {"secure", no_argument, ((void*)0), 'd'},
  {"rate", required_argument, ((void*)0), 'r'},
  {"suspend", no_argument, ((void*)0), 's'},
  {0, 0, 0, 0}
 };

 pool_trim_func_t cmd_type = POOL_TRIM_START;
 uint64_t rate = 0;
 boolean_t secure = B_FALSE;

 int c;
 while ((c = getopt_long(argc, argv, "cdr:s", long_options, ((void*)0)))
     != -1) {
  switch (c) {
  case 'c':
   if (cmd_type != POOL_TRIM_START &&
       cmd_type != POOL_TRIM_CANCEL) {
    (void) fprintf(stderr, gettext("-c cannot be "
        "combined with other options\n"));
    usage(B_FALSE);
   }
   cmd_type = POOL_TRIM_CANCEL;
   break;
  case 'd':
   if (cmd_type != POOL_TRIM_START) {
    (void) fprintf(stderr, gettext("-d cannot be "
        "combined with the -c or -s options\n"));
    usage(B_FALSE);
   }
   secure = B_TRUE;
   break;
  case 'r':
   if (cmd_type != POOL_TRIM_START) {
    (void) fprintf(stderr, gettext("-r cannot be "
        "combined with the -c or -s options\n"));
    usage(B_FALSE);
   }
   if (zfs_nicestrtonum(((void*)0), optarg, &rate) == -1) {
    (void) fprintf(stderr,
        gettext("invalid value for rate\n"));
    usage(B_FALSE);
   }
   break;
  case 's':
   if (cmd_type != POOL_TRIM_START &&
       cmd_type != POOL_TRIM_SUSPEND) {
    (void) fprintf(stderr, gettext("-s cannot be "
        "combined with other options\n"));
    usage(B_FALSE);
   }
   cmd_type = POOL_TRIM_SUSPEND;
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

 char *poolname = argv[0];
 zpool_handle_t *zhp = zpool_open(g_zfs, poolname);
 if (zhp == ((void*)0))
  return (-1);

 trimflags_t trim_flags = {
  .secure = secure,
  .rate = rate,
 };

 nvlist_t *vdevs = fnvlist_alloc();
 if (argc == 1) {

  nvlist_t *config = zpool_get_config(zhp, ((void*)0));
  nvlist_t *nvroot = fnvlist_lookup_nvlist(config,
      ZPOOL_CONFIG_VDEV_TREE);
  zpool_collect_leaves(zhp, nvroot, vdevs);
  trim_flags.fullpool = B_TRUE;
 } else {
  trim_flags.fullpool = B_FALSE;
  for (int i = 1; i < argc; i++) {
   fnvlist_add_boolean(vdevs, argv[i]);
  }
 }

 int error = zpool_trim(zhp, cmd_type, vdevs, &trim_flags);

 fnvlist_free(vdevs);
 zpool_close(zhp);

 return (error);
}
