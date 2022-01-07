
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint64_t ;
struct TYPE_2__ {int denom; int numer; } ;


 int NS_FROM_VLC_TICK (int) ;
 int assert (int) ;
 TYPE_1__ tinfo ;

__attribute__((used)) static inline uint64_t
TickToHostTime(vlc_tick_t i_us)
{
    assert(tinfo.denom != 0);
    return NS_FROM_VLC_TICK(i_us * tinfo.denom / tinfo.numer);
}
