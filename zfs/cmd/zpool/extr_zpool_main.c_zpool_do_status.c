
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cb_count; void* cb_allpools; void* cb_first; void* cb_explain; int * vcdl; void* cb_print_status; void* cb_print_vdev_trim; void* cb_dedup_stats; void* cb_verbose; void* cb_print_slow_ios; int cb_name_flags; void* cb_literal; void* cb_print_vdev_init; int member_0; } ;
typedef TYPE_1__ status_cbdata_t ;


 int B_FALSE ;
 void* B_TRUE ;
 scalar_t__ NODATE ;
 int VDEV_NAME_FOLLOW_LINKS ;
 int VDEV_NAME_GUID ;
 int VDEV_NAME_PATH ;
 int * all_pools_for_each_vdev_run (int,char**,char*,int *,int *,int ,int ) ;
 int exit (int) ;
 int for_each_pool (int,char**,void*,int *,int ,TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int free_vdev_cmd_data_list (int *) ;
 int fsleep (float) ;
 int get_interval_count (int*,char**,float*,unsigned long*) ;
 int get_timestamp_arg (char) ;
 int * getenv (char*) ;
 int geteuid () ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int getuid () ;
 int libzfs_envvar_is_set (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 char optopt ;
 int print_timestamp (scalar_t__) ;
 int print_zpool_script_list (char*) ;
 int printf (char*) ;
 int status_callback ;
 int stderr ;
 scalar_t__ timestamp_fmt ;
 int usage (int ) ;

int
zpool_do_status(int argc, char **argv)
{
 int c;
 int ret;
 float interval = 0;
 unsigned long count = 0;
 status_cbdata_t cb = { 0 };
 char *cmd = ((void*)0);


 while ((c = getopt(argc, argv, "c:igLpPsvxDtT:")) != -1) {
  switch (c) {
  case 'c':
   if (cmd != ((void*)0)) {
    fprintf(stderr,
        gettext("Can't set -c flag twice\n"));
    exit(1);
   }

   if (getenv("ZPOOL_SCRIPTS_ENABLED") != ((void*)0) &&
       !libzfs_envvar_is_set("ZPOOL_SCRIPTS_ENABLED")) {
    fprintf(stderr, gettext(
        "Can't run -c, disabled by "
        "ZPOOL_SCRIPTS_ENABLED.\n"));
    exit(1);
   }

   if ((getuid() <= 0 || geteuid() <= 0) &&
       !libzfs_envvar_is_set("ZPOOL_SCRIPTS_AS_ROOT")) {
    fprintf(stderr, gettext(
        "Can't run -c with root privileges "
        "unless ZPOOL_SCRIPTS_AS_ROOT is set.\n"));
    exit(1);
   }
   cmd = optarg;
   break;
  case 'i':
   cb.cb_print_vdev_init = B_TRUE;
   break;
  case 'g':
   cb.cb_name_flags |= VDEV_NAME_GUID;
   break;
  case 'L':
   cb.cb_name_flags |= VDEV_NAME_FOLLOW_LINKS;
   break;
  case 'p':
   cb.cb_literal = B_TRUE;
   break;
  case 'P':
   cb.cb_name_flags |= VDEV_NAME_PATH;
   break;
  case 's':
   cb.cb_print_slow_ios = B_TRUE;
   break;
  case 'v':
   cb.cb_verbose = B_TRUE;
   break;
  case 'x':
   cb.cb_explain = B_TRUE;
   break;
  case 'D':
   cb.cb_dedup_stats = B_TRUE;
   break;
  case 't':
   cb.cb_print_vdev_trim = B_TRUE;
   break;
  case 'T':
   get_timestamp_arg(*optarg);
   break;
  case '?':
   if (optopt == 'c') {
    print_zpool_script_list("status");
    exit(0);
   } else {
    fprintf(stderr,
        gettext("invalid option '%c'\n"), optopt);
   }
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;

 get_interval_count(&argc, argv, &interval, &count);

 if (argc == 0)
  cb.cb_allpools = B_TRUE;

 cb.cb_first = B_TRUE;
 cb.cb_print_status = B_TRUE;

 for (;;) {
  if (timestamp_fmt != NODATE)
   print_timestamp(timestamp_fmt);

  if (cmd != ((void*)0))
   cb.vcdl = all_pools_for_each_vdev_run(argc, argv, cmd,
       ((void*)0), ((void*)0), 0, 0);

  ret = for_each_pool(argc, argv, B_TRUE, ((void*)0),
      status_callback, &cb);

  if (cb.vcdl != ((void*)0))
   free_vdev_cmd_data_list(cb.vcdl);

  if (argc == 0 && cb.cb_count == 0)
   (void) fprintf(stderr, gettext("no pools available\n"));
  else if (cb.cb_explain && cb.cb_first && cb.cb_allpools)
   (void) printf(gettext("all pools are healthy\n"));

  if (ret != 0)
   return (ret);

  if (interval == 0)
   break;

  if (count != 0 && --count == 0)
   break;

  (void) fsleep(interval);
 }

 return (0);
}
