
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct timespec {int dummy; } ;


 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int nanosleep (struct timespec*,struct timespec*) ;
 struct timespec timespec_from_vlc_tick (int ) ;

void vlc_tick_sleep (vlc_tick_t delay)
{
    struct timespec ts = timespec_from_vlc_tick (delay);



    while (nanosleep (&ts, &ts) == -1)
        assert (errno == EINTR);
}
