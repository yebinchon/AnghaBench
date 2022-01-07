
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_3__ {long wd_interval; int wd_sem; int wd_poolname; } ;
typedef TYPE_1__ wait_data_t ;
struct timespec {long tv_sec; long tv_nsec; } ;
typedef scalar_t__ boolean_t ;


 int CLOCK_REALTIME ;
 scalar_t__ ETIMEDOUT ;
 long NANOSEC ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ errno ;
 long floor (long) ;
 int fprintf (int ,char*,char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 int print_wait_status_row (TYPE_1__*,int *,int) ;
 scalar_t__ sem_timedwait (int *,struct timespec*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int zpool_close (int *) ;
 int * zpool_open (int ,int ) ;
 scalar_t__ zpool_props_refresh (int *) ;
 scalar_t__ zpool_refresh_stats (int *,scalar_t__*) ;

void *
wait_status_thread(void *arg)
{
 wait_data_t *wd = (wait_data_t *)arg;
 zpool_handle_t *zhp;

 if ((zhp = zpool_open(g_zfs, wd->wd_poolname)) == ((void*)0))
  return (void *)(1);

 for (int row = 0; ; row++) {
  boolean_t missing;
  struct timespec timeout;
  (void) clock_gettime(CLOCK_REALTIME, &timeout);

  if (zpool_refresh_stats(zhp, &missing) != 0 || missing ||
      zpool_props_refresh(zhp) != 0) {
   zpool_close(zhp);
   return (void *)(uintptr_t)(missing ? 0 : 1);
  }

  print_wait_status_row(wd, zhp, row);

  timeout.tv_sec += floor(wd->wd_interval);
  long nanos = timeout.tv_nsec +
      (wd->wd_interval - floor(wd->wd_interval)) * NANOSEC;
  if (nanos >= NANOSEC) {
   timeout.tv_sec++;
   timeout.tv_nsec = nanos - NANOSEC;
  } else {
   timeout.tv_nsec = nanos;
  }

  if (sem_timedwait(&wd->wd_sem, &timeout) == 0) {
   break;
  } else if (errno != ETIMEDOUT) {
   (void) fprintf(stderr, gettext("sem_timedwait failed: "
       "%s\n"), strerror(errno));
   zpool_close(zhp);
   return (void *)(uintptr_t)(1);
  }
 }

 zpool_close(zhp);
 return (void *)(0);
}
