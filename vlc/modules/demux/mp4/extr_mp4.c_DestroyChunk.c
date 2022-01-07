
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_sample_size; int p_sample_offset_pts; int p_sample_count_pts; int p_sample_delta_dts; int p_sample_count_dts; } ;
typedef TYPE_1__ mp4_chunk_t ;


 int free (int ) ;

__attribute__((used)) static void DestroyChunk( mp4_chunk_t *ck )
{
    free( ck->p_sample_count_dts );
    free( ck->p_sample_delta_dts );
    free( ck->p_sample_count_pts );
    free( ck->p_sample_offset_pts );
    free( ck->p_sample_size );
}
