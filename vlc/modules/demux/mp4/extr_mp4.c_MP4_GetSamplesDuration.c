
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef unsigned int stime_t ;
struct TYPE_4__ {size_t i_chunk; unsigned int i_sample; int i_timescale; TYPE_2__* chunk; } ;
typedef TYPE_1__ mp4_track_t ;
struct TYPE_5__ {unsigned int i_sample_first; unsigned int i_entries_dts; unsigned int* p_sample_count_dts; unsigned int* p_sample_delta_dts; } ;
typedef TYPE_2__ mp4_chunk_t ;
typedef unsigned int int64_t ;
typedef int demux_t ;


 int MP4_rescale_mtime (unsigned int,int ) ;
 int VLC_UNUSED (int *) ;

__attribute__((used)) static inline vlc_tick_t MP4_GetSamplesDuration( demux_t *p_demux, mp4_track_t *p_track,
                                              unsigned i_nb_samples )
{
    VLC_UNUSED( p_demux );

    const mp4_chunk_t *p_chunk = &p_track->chunk[p_track->i_chunk];
    stime_t i_duration = 0;


    unsigned i_index = 0;
    unsigned i_remain = 0;
    for( unsigned i = p_chunk->i_sample_first;
         i<p_track->i_sample && i_index < p_chunk->i_entries_dts; )
    {
        if( p_track->i_sample - i >= p_chunk->p_sample_count_dts[i_index] )
        {
            i += p_chunk->p_sample_count_dts[i_index];
            i_index++;
        }
        else
        {
            i_remain = p_track->i_sample - i;
            break;
        }
    }


    while( i_nb_samples > 0 && i_index < p_chunk->i_entries_dts )
    {
        if( i_nb_samples >= p_chunk->p_sample_count_dts[i_index] - i_remain )
        {
            i_duration += (p_chunk->p_sample_count_dts[i_index] - i_remain) *
                          (int64_t) p_chunk->p_sample_delta_dts[i_index];
            i_nb_samples -= (p_chunk->p_sample_count_dts[i_index] - i_remain);
            i_index++;
            i_remain = 0;
        }
        else
        {
            i_duration += i_nb_samples * p_chunk->p_sample_delta_dts[i_index];
            break;
        }
    }

    return MP4_rescale_mtime( i_duration, p_track->i_timescale );
}
