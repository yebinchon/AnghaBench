
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint64_t ;
struct TYPE_2__ {int denom; int numer; } ;


 int VLC_TICK_FROM_NS (int) ;
 int assert (int) ;
 TYPE_1__ tinfo ;

__attribute__((used)) static inline vlc_tick_t
HostTimeToTick(uint64_t i_host_time)
{
    assert(tinfo.denom != 0);
    return VLC_TICK_FROM_NS(i_host_time * tinfo.numer / tinfo.denom);
}
