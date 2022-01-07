
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {size_t i_chunk_count; size_t i_chunk; TYPE_1__* chunk; int i_timescale; } ;
typedef TYPE_2__ mp4_track_t ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_9__ {unsigned int i_tracks; TYPE_2__* track; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_6__ {scalar_t__ i_offset; scalar_t__ i_virtual_run_number; scalar_t__ i_duration; } ;


 scalar_t__ MP4_rescale_mtime (scalar_t__,int ) ;

__attribute__((used)) static void MP4_GetInterleaving( demux_t *p_demux, vlc_tick_t *pi_max_contiguous, bool *pb_flat )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    *pi_max_contiguous = 0;
    *pb_flat = 1;


    mp4_track_t *tk = ((void*)0);
    uint64_t i_duration = 0;
    for( unsigned i=0; i < p_sys->i_tracks; i++ )
    {
        mp4_track_t *cur = &p_sys->track[i];
        if( !cur->i_chunk_count )
            continue;

        if( tk == ((void*)0) || cur->chunk[0].i_offset < tk->chunk[0].i_offset )
            tk = cur;
    }

    for( ; tk != ((void*)0); )
    {
        i_duration += tk->chunk[tk->i_chunk].i_duration;
        tk->i_chunk++;


        mp4_track_t *nexttk = ((void*)0);
        for( unsigned i=0; i < p_sys->i_tracks; i++ )
        {
            mp4_track_t *cur = &p_sys->track[i];
            if( cur->i_chunk == cur->i_chunk_count )
                continue;

            if( nexttk == ((void*)0) ||
                cur->chunk[cur->i_chunk].i_offset < nexttk->chunk[nexttk->i_chunk].i_offset )
                nexttk = cur;
        }


        if( nexttk && nexttk->i_chunk > 0 )
            nexttk->chunk[nexttk->i_chunk].i_virtual_run_number =
                    nexttk->chunk[nexttk->i_chunk - 1].i_virtual_run_number;

        if( tk != nexttk )
        {
            vlc_tick_t i_dur = MP4_rescale_mtime( i_duration, tk->i_timescale );
            if( i_dur > *pi_max_contiguous )
                *pi_max_contiguous = i_dur;
            i_duration = 0;

            if( tk->i_chunk != tk->i_chunk_count )
                *pb_flat = 0;

            if( nexttk && nexttk->i_chunk > 0 )
                nexttk->chunk[nexttk->i_chunk].i_virtual_run_number++;
        }

        tk = nexttk;
    }


    for( unsigned i=0; i < p_sys->i_tracks; i++ )
        p_sys->track[i].i_chunk = 0;
}
