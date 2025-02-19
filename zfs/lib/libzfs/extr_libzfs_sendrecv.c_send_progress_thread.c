
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef char* u_longlong_t ;
typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_5__ {int pa_verbosity; scalar_t__ pa_parsable; scalar_t__ pa_estimate; int pa_fd; TYPE_1__* pa_zhp; } ;
typedef TYPE_2__ progress_arg_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EINTR ;
 int ENOENT ;
 int fprintf (int ,char*,...) ;
 struct tm* localtime (int *) ;
 int sleep (int) ;
 int stderr ;
 int time (int *) ;
 int zfs_nicebytes (scalar_t__,char*,int) ;
 int zfs_nicenum (scalar_t__,char*,int) ;
 int zfs_send_progress (TYPE_1__*,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void *
send_progress_thread(void *arg)
{
 progress_arg_t *pa = arg;
 zfs_handle_t *zhp = pa->pa_zhp;
 uint64_t bytes;
 uint64_t blocks;
 char buf[16];
 time_t t;
 struct tm *tm;
 boolean_t firstloop = B_TRUE;




 for (;;) {
  int err;
  (void) sleep(1);
  if ((err = zfs_send_progress(zhp, pa->pa_fd, &bytes,
      &blocks)) != 0) {
   if (err == EINTR || err == ENOENT)
    return ((void *)0);
   return ((void *)(uintptr_t)err);
  }

  if (firstloop && !pa->pa_parsable) {
   (void) fprintf(stderr,
       "TIME       %s   %sSNAPSHOT %s\n",
       pa->pa_estimate ? "BYTES" : " SENT",
       pa->pa_verbosity >= 2 ? "   BLOCKS    " : "",
       zhp->zfs_name);
   firstloop = B_FALSE;
  }

  (void) time(&t);
  tm = localtime(&t);

  if (pa->pa_verbosity >= 2 && pa->pa_parsable) {
   (void) fprintf(stderr,
       "%02d:%02d:%02d\t%llu\t%llu\t%s\n",
       tm->tm_hour, tm->tm_min, tm->tm_sec,
       (u_longlong_t)bytes, (u_longlong_t)blocks,
       zhp->zfs_name);
  } else if (pa->pa_verbosity >= 2) {
   zfs_nicenum(bytes, buf, sizeof (buf));
   (void) fprintf(stderr,
       "%02d:%02d:%02d   %5s    %8llu    %s\n",
       tm->tm_hour, tm->tm_min, tm->tm_sec,
       buf, (u_longlong_t)blocks, zhp->zfs_name);
  } else if (pa->pa_parsable) {
   (void) fprintf(stderr, "%02d:%02d:%02d\t%llu\t%s\n",
       tm->tm_hour, tm->tm_min, tm->tm_sec,
       (u_longlong_t)bytes, zhp->zfs_name);
  } else {
   zfs_nicebytes(bytes, buf, sizeof (buf));
   (void) fprintf(stderr, "%02d:%02d:%02d   %5s   %s\n",
       tm->tm_hour, tm->tm_min, tm->tm_sec,
       buf, zhp->zfs_name);
  }
 }
}
