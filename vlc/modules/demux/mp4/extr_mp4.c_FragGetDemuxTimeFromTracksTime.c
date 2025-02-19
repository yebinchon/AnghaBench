
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_9__ {unsigned int i_tracks; TYPE_3__* track; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_6__ {scalar_t__ i_count; } ;
struct TYPE_7__ {TYPE_1__ runs; } ;
struct TYPE_8__ {int i_timescale; int i_time; TYPE_2__ context; } ;


 int INT64_MAX ;
 int MP4_rescale_mtime (int ,int ) ;
 int __MIN (int ,int ) ;

__attribute__((used)) static vlc_tick_t FragGetDemuxTimeFromTracksTime( demux_sys_t *p_sys )
{
    vlc_tick_t i_time = INT64_MAX;
    for( unsigned int i = 0; i < p_sys->i_tracks; i++ )
    {
        if( p_sys->track[i].context.runs.i_count == 0 )
            continue;
        vlc_tick_t i_ttime = MP4_rescale_mtime( p_sys->track[i].i_time,
                                             p_sys->track[i].i_timescale );
        i_time = __MIN( i_time, i_ttime );
    }
    return i_time;
}
