
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int US_FROM_VLC_TICK (int ) ;
 int vlc_tick_now () ;

int64_t libvlc_clock(void)
{
    return US_FROM_VLC_TICK(vlc_tick_now());
}
