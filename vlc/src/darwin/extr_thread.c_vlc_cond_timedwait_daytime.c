
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;
typedef int vlc_cond_t ;
typedef int time_t ;
struct timespec {int member_1; int member_0; } ;


 int ETIMEDOUT ;
 int VLC_THREAD_ASSERT (char*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_testcancel () ;

int vlc_cond_timedwait_daytime (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                                time_t deadline)
{
    pthread_testcancel();






    struct timespec ts = { deadline, 0 };
    int val = pthread_cond_timedwait(p_condvar, p_mutex, &ts);

    if (val != ETIMEDOUT)
        VLC_THREAD_ASSERT ("timed-waiting on condition");
    return val;
}
