
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_mutex_t ;
typedef int vlc_cond_t ;
typedef int time_t ;
struct timeval {int dummy; } ;
typedef int ULONG ;


 int gettimeofday (struct timeval*,int *) ;
 int vlc_cond_wait_common (int *,int *,int) ;
 int vlc_tick_from_timeval (struct timeval*) ;

int vlc_cond_timedwait_daytime (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                                time_t deadline)
{
    ULONG ulTimeout;
    vlc_tick_t total;
    struct timeval tv;

    gettimeofday (&tv, ((void*)0));

    total = vlc_tick_from_timeval( &tv );
    total = (deadline - total) / 1000;
    if( total < 0 )
        total = 0;

    ulTimeout = ( total > 0x7fffffff ) ? 0x7fffffff : total;

    return vlc_cond_wait_common (p_condvar, p_mutex, ulTimeout);
}
