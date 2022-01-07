
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 int VLC_HARD_MIN_SLEEP ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static int DemuxHold( demux_t *demux )
{
    (void) demux;
    vlc_tick_sleep( VLC_HARD_MIN_SLEEP );
    return 1;
}
