
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct timespec {int dummy; } ;


 scalar_t__ ETIMEDOUT ;
 scalar_t__ errno ;
 struct timespec timespec_from_vlc_tick (int ) ;
 scalar_t__ vlc_futex_wait (void*,unsigned int,struct timespec*) ;

bool vlc_addr_timedwait(void *addr, unsigned val, vlc_tick_t delay)
{
    struct timespec ts = timespec_from_vlc_tick(delay);

    return (vlc_futex_wait(addr, val, &ts) == 0 || errno != ETIMEDOUT);
}
