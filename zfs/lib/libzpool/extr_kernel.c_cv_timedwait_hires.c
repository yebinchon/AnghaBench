
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int pthread_t ;
struct TYPE_3__ {int m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;
typedef int kcondvar_t ;
typedef int hrtime_t ;
typedef int clock_t ;


 int ASSERT (int) ;
 int CALLOUT_FLAG_ABSOLUTE ;
 int ETIMEDOUT ;
 int NANOSEC ;
 int NSEC_PER_USEC ;
 int VERIFY0 (int) ;
 scalar_t__ gethrtime () ;
 int gettimeofday (struct timeval*,int *) ;
 int memset (int *,int ,int) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_self () ;

clock_t
cv_timedwait_hires(kcondvar_t *cv, kmutex_t *mp, hrtime_t tim, hrtime_t res,
    int flag)
{
 int error;
 struct timeval tv;
 struct timespec ts;
 hrtime_t delta;

 ASSERT(flag == 0 || flag == CALLOUT_FLAG_ABSOLUTE);

 delta = tim;
 if (flag & CALLOUT_FLAG_ABSOLUTE)
  delta -= gethrtime();

 if (delta <= 0)
  return (-1);

 VERIFY0(gettimeofday(&tv, ((void*)0)));

 ts.tv_sec = tv.tv_sec + delta / NANOSEC;
 ts.tv_nsec = tv.tv_usec * NSEC_PER_USEC + (delta % NANOSEC);
 if (ts.tv_nsec >= NANOSEC) {
  ts.tv_sec++;
  ts.tv_nsec -= NANOSEC;
 }

 memset(&mp->m_owner, 0, sizeof (pthread_t));
 error = pthread_cond_timedwait(cv, &mp->m_lock, &ts);
 mp->m_owner = pthread_self();

 if (error == ETIMEDOUT)
  return (-1);

 VERIFY0(error);

 return (1);
}
