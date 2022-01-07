
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_mutex_t ;
typedef int vlc_cond_t ;
struct timespec {int dummy; } ;


 int ETIMEDOUT ;
 int VLC_THREAD_ASSERT (char*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 struct timespec timespec_from_vlc_tick (int ) ;

int vlc_cond_timedwait (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                        vlc_tick_t deadline)
{
    struct timespec ts = timespec_from_vlc_tick (deadline);
    int val = pthread_cond_timedwait (p_condvar, p_mutex, &ts);
    if (val != ETIMEDOUT)
        VLC_THREAD_ASSERT ("timed-waiting on condition");
    return val;
}
