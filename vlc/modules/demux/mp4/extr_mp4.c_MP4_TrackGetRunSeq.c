
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ i_chunk_count; size_t i_chunk; TYPE_1__* chunk; } ;
typedef TYPE_2__ mp4_track_t ;
struct TYPE_4__ {int i_virtual_run_number; } ;



__attribute__((used)) static uint32_t MP4_TrackGetRunSeq( mp4_track_t *p_track )
{
    if( p_track->i_chunk_count > 0 )
        return p_track->chunk[p_track->i_chunk].i_virtual_run_number;
    return 0;
}
