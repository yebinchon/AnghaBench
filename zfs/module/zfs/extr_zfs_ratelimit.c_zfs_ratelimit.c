
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; scalar_t__ interval; scalar_t__* burst; int lock; scalar_t__ start; } ;
typedef TYPE_1__ zfs_ratelimit_t ;
typedef scalar_t__ hrtime_t ;


 scalar_t__ NSEC2SEC (scalar_t__) ;
 scalar_t__ gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

int
zfs_ratelimit(zfs_ratelimit_t *rl)
{
 hrtime_t now;

 hrtime_t elapsed;
 int error = 1;

 mutex_enter(&rl->lock);

 now = gethrtime();
 elapsed = now - rl->start;

 rl->count++;
 if (NSEC2SEC(elapsed) >= rl->interval) {
  rl->start = now;
  rl->count = 0;
 } else {
  if (rl->count >= *rl->burst) {
   error = 0;
  }
 }
 mutex_exit(&rl->lock);

 return (error);
}
