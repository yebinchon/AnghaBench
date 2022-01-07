
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stime_t ;
struct TYPE_3__ {int i_entries; size_t i_tracks; int * p_times; } ;
typedef TYPE_1__ mp4_fragments_index_t ;



stime_t MP4_Fragment_Index_GetTrackDuration( mp4_fragments_index_t *p_index, unsigned i )
{
    return p_index->p_times[(size_t)(p_index->i_entries - 1) * p_index->i_tracks + i];
}
