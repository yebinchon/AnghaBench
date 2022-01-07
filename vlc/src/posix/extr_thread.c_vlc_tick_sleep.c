
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct timespec {int dummy; } ;


 int CLOCK_MONOTONIC ;
 scalar_t__ EINTR ;
 scalar_t__ clock_nanosleep (int ,int ,struct timespec*,struct timespec*) ;
 struct timespec timespec_from_vlc_tick (int ) ;

void vlc_tick_sleep (vlc_tick_t delay)
{
    struct timespec ts = timespec_from_vlc_tick (delay);

    while (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, &ts) == EINTR);
}
