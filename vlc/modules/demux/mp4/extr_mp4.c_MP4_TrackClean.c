
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * p_array; } ;
struct TYPE_8__ {TYPE_2__ runs; } ;
struct TYPE_6__ {scalar_t__ p_frame; } ;
struct TYPE_9__ {unsigned int i_chunk_count; TYPE_3__ context; TYPE_1__ asfinfo; int * p_sample_size; int i_sample_size; int * chunk; scalar_t__ p_es; int fmt; } ;
typedef TYPE_4__ mp4_track_t ;
typedef int es_out_t ;


 int DestroyChunk (int *) ;
 int block_ChainRelease (scalar_t__) ;
 int es_format_Clean (int *) ;
 int es_out_Del (int *,scalar_t__) ;
 int free (int *) ;

__attribute__((used)) static void MP4_TrackClean( es_out_t *out, mp4_track_t *p_track )
{
    es_format_Clean( &p_track->fmt );

    if( p_track->p_es )
        es_out_Del( out, p_track->p_es );

    if( p_track->chunk )
    {
        for( unsigned int i_chunk = 0; i_chunk < p_track->i_chunk_count; i_chunk++ )
            DestroyChunk( &p_track->chunk[i_chunk] );
    }
    free( p_track->chunk );

    if( !p_track->i_sample_size )
        free( p_track->p_sample_size );

    if ( p_track->asfinfo.p_frame )
        block_ChainRelease( p_track->asfinfo.p_frame );

    free( p_track->context.runs.p_array );
}
