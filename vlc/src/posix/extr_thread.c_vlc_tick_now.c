
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct timespec {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int abort () ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ unlikely (int) ;
 int vlc_tick_from_timespec (struct timespec*) ;

vlc_tick_t vlc_tick_now (void)
{
    struct timespec ts;

    if (unlikely(clock_gettime(CLOCK_MONOTONIC, &ts) != 0))
        abort ();

    return vlc_tick_from_timespec( &ts );
}
