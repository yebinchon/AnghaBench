
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {size_t i_chunk; unsigned int i_sample; int i_timescale; TYPE_2__* chunk; } ;
typedef TYPE_1__ mp4_track_t ;
struct TYPE_5__ {unsigned int i_sample_first; unsigned int* p_sample_count_pts; unsigned int i_entries_pts; int * p_sample_offset_pts; } ;
typedef TYPE_2__ mp4_chunk_t ;
typedef int demux_t ;


 int MP4_rescale_mtime (int ,int ) ;
 int VLC_UNUSED (int *) ;

__attribute__((used)) static inline bool MP4_TrackGetPTSDelta( demux_t *p_demux, mp4_track_t *p_track,
                                         vlc_tick_t *pi_delta )
{
    VLC_UNUSED( p_demux );
    mp4_chunk_t *ck = &p_track->chunk[p_track->i_chunk];

    unsigned int i_index = 0;
    unsigned int i_sample = p_track->i_sample - ck->i_sample_first;

    if( ck->p_sample_count_pts == ((void*)0) || ck->p_sample_offset_pts == ((void*)0) )
        return 0;

    for( i_index = 0; i_index < ck->i_entries_pts ; i_index++ )
    {
        if( i_sample < ck->p_sample_count_pts[i_index] )
        {
            *pi_delta = MP4_rescale_mtime( ck->p_sample_offset_pts[i_index],
                                           p_track->i_timescale );
            return 1;
        }

        i_sample -= ck->p_sample_count_pts[i_index];
    }
    return 0;
}
