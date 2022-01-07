
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ stime_t ;
struct TYPE_3__ {scalar_t__ i_last_time; int i_entries; unsigned int i_tracks; scalar_t__* p_times; int * pi_pos; } ;
typedef TYPE_1__ mp4_fragments_index_t ;



bool MP4_Fragments_Index_Lookup( mp4_fragments_index_t *p_index, stime_t *pi_time,
                                 uint64_t *pi_pos, unsigned i_track_index )
{
    if( *pi_time >= p_index->i_last_time || p_index->i_entries < 1 ||
        i_track_index >= p_index->i_tracks )
        return 0;

    for( size_t i=1; i<p_index->i_entries; i++ )
    {
        if( p_index->p_times[i * p_index->i_tracks + i_track_index] > *pi_time )
        {
            *pi_time = p_index->p_times[(i - 1) * p_index->i_tracks + i_track_index];
            *pi_pos = p_index->pi_pos[i - 1];
            return 1;
        }
    }

    *pi_time = p_index->p_times[(size_t)(p_index->i_entries - 1) * p_index->i_tracks];
    *pi_pos = p_index->pi_pos[p_index->i_entries - 1];
    return 1;
}
