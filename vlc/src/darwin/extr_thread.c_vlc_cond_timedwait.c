
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;
typedef int vlc_mutex_t ;
typedef int vlc_cond_t ;
struct timespec {int dummy; } ;


 int ETIMEDOUT ;
 int VLC_THREAD_ASSERT (char*) ;
 int pthread_cond_timedwait_relative_np (int *,int *,struct timespec*) ;
 int pthread_testcancel () ;
 struct timespec timespec_from_vlc_tick (scalar_t__) ;
 scalar_t__ vlc_tick_now () ;

int vlc_cond_timedwait (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                        vlc_tick_t deadline)
{


    pthread_testcancel();





    vlc_tick_t base = vlc_tick_now();
    deadline -= base;
    if (deadline < 0)
        deadline = 0;

    struct timespec ts = timespec_from_vlc_tick(deadline);
    int val = pthread_cond_timedwait_relative_np(p_condvar, p_mutex, &ts);
    if (val != ETIMEDOUT)
        VLC_THREAD_ASSERT ("timed-waiting on condition");
    return val;
}
