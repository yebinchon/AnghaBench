
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_3__ {scalar_t__ wd_interval; char* wd_poolname; int wd_sem; void** wd_enabled; void* wd_exact; void* wd_headers_once; void* wd_scripted; } ;
typedef TYPE_1__ wait_data_t ;
typedef int pthread_t ;
typedef int boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int ZPOOL_WAIT_NUM_ACTIVITIES ;
 int bzero (void***,int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int get_interval_count (int*,char**,scalar_t__*,unsigned long*) ;
 int get_timestamp_arg (char) ;
 char getopt (int,char**,char*) ;
 int getsubopt (char**,char**,char**) ;
 char* gettext (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int optopt ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_1__*) ;
 int pthread_join (int ,void*) ;
 int sem_destroy (int *) ;
 int sem_init (int *,int ,int ) ;
 int sem_post (int *) ;
 int stderr ;
 char* strerror (int ) ;
 int usage (void*) ;
 int wait_status_thread ;
 int zpool_close (int *) ;
 int * zpool_open (int ,char*) ;
 int zpool_wait_status (int *,int,int*,int*) ;

int
zpool_do_wait(int argc, char **argv)
{
 boolean_t verbose = B_FALSE;
 char c;
 char *value;
 int i;
 unsigned long count;
 pthread_t status_thr;
 int error = 0;
 zpool_handle_t *zhp;

 wait_data_t wd;
 wd.wd_scripted = B_FALSE;
 wd.wd_exact = B_FALSE;
 wd.wd_headers_once = B_FALSE;

 (void) sem_init(&wd.wd_sem, 0, 0);


 for (i = 0; i < ZPOOL_WAIT_NUM_ACTIVITIES; i++)
  wd.wd_enabled[i] = B_TRUE;

 while ((c = getopt(argc, argv, "HpT:t:")) != -1) {
  switch (c) {
  case 'H':
   wd.wd_scripted = B_TRUE;
   break;
  case 'n':
   wd.wd_headers_once = B_TRUE;
   break;
  case 'p':
   wd.wd_exact = B_TRUE;
   break;
  case 'T':
   get_timestamp_arg(*optarg);
   break;
  case 't':
  {
   static char *col_subopts[] = { "discard", "free",
       "initialize", "replace", "remove", "resilver",
       "scrub", ((void*)0) };


   bzero(&wd.wd_enabled, sizeof (wd.wd_enabled));
   while (*optarg != '\0') {
    int activity = getsubopt(&optarg, col_subopts,
        &value);

    if (activity < 0) {
     (void) fprintf(stderr,
         gettext("invalid activity '%s'\n"),
         value);
     usage(B_FALSE);
    }

    wd.wd_enabled[activity] = B_TRUE;
   }
   break;
  }
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;

 get_interval_count(&argc, argv, &wd.wd_interval, &count);
 if (count != 0) {

  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 if (wd.wd_interval != 0)
  verbose = B_TRUE;

 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing 'pool' argument\n"));
  usage(B_FALSE);
 }
 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 wd.wd_poolname = argv[0];

 if ((zhp = zpool_open(g_zfs, wd.wd_poolname)) == ((void*)0))
  return (1);

 if (verbose) {





  if (pthread_create(&status_thr, ((void*)0), wait_status_thread, &wd)
      != 0) {
   (void) fprintf(stderr, gettext("failed to create status"
       "thread: %s\n"), strerror(errno));
   zpool_close(zhp);
   return (1);
  }
 }
 for (;;) {
  boolean_t missing = B_FALSE;
  boolean_t any_waited = B_FALSE;

  for (i = 0; i < ZPOOL_WAIT_NUM_ACTIVITIES; i++) {
   boolean_t waited;

   if (!wd.wd_enabled[i])
    continue;

   error = zpool_wait_status(zhp, i, &missing, &waited);
   if (error != 0 || missing)
    break;

   any_waited = (any_waited || waited);
  }

  if (error != 0 || missing || !any_waited)
   break;
 }

 zpool_close(zhp);

 if (verbose) {
  uintptr_t status;
  (void) sem_post(&wd.wd_sem);
  (void) pthread_join(status_thr, (void *)&status);
  if (status != 0)
   error = status;
 }

 (void) sem_destroy(&wd.wd_sem);

 return (error);
}
