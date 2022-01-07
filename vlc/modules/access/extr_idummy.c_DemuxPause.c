
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {scalar_t__ end; } ;
typedef TYPE_2__ demux_sys_t ;


 int VLC_HARD_MIN_SLEEP ;
 scalar_t__ vlc_tick_now () ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static int DemuxPause( demux_t *demux )
{
    demux_sys_t *p_sys = demux->p_sys;
    vlc_tick_t now = vlc_tick_now();

    if( now >= p_sys->end )
        return 0;

    vlc_tick_sleep( VLC_HARD_MIN_SLEEP );
    return 1;
}
