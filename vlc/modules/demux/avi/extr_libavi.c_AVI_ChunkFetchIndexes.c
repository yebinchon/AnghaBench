
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_chunk_fourcc; TYPE_2__* p_father; union avi_chunk_u* p_next; union avi_chunk_u* p_first; } ;
union avi_chunk_u {TYPE_3__ common; } ;
typedef int uint64_t ;
typedef int stream_t ;
typedef union avi_chunk_u avi_chunk_t ;
struct TYPE_4__ {scalar_t__ i_chunk_size; scalar_t__ i_chunk_pos; } ;
struct TYPE_5__ {TYPE_1__ common; } ;


 scalar_t__ AVIFOURCC_idx1 ;
 scalar_t__ AVIFOURCC_indx ;
 int AVIFOURCC_movi ;
 int AVI_ChunkClean (int *,union avi_chunk_u*) ;
 int AVI_ChunkEnd (union avi_chunk_u*) ;
 union avi_chunk_u* AVI_ChunkFind (union avi_chunk_u*,int ,int ,int) ;
 int AVI_ChunkRead (int *,union avi_chunk_u*,union avi_chunk_u*) ;
 int STREAM_CAN_SEEK ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ __EVEN (scalar_t__) ;
 union avi_chunk_u* calloc (int,int) ;
 int free (union avi_chunk_u*) ;
 int vlc_stream_Control (int *,int ,int*) ;
 scalar_t__ vlc_stream_Seek (int *,int const) ;
 scalar_t__ vlc_stream_Tell (int *) ;

int AVI_ChunkFetchIndexes( stream_t *s, avi_chunk_t *p_riff )
{
    avi_chunk_t *p_movi = AVI_ChunkFind( p_riff, AVIFOURCC_movi, 0, 1 );
    if ( !p_movi )
        return VLC_EGENERIC;

    avi_chunk_t *p_chk;
    const uint64_t i_indexpos = AVI_ChunkEnd( p_movi );
    bool b_seekable = 0;
    int i_ret = VLC_SUCCESS;

    vlc_stream_Control( s, STREAM_CAN_SEEK, &b_seekable );
    if ( !b_seekable || vlc_stream_Seek( s, i_indexpos ) )
        return VLC_EGENERIC;

    union avi_chunk_u **pp_append = &p_riff->common.p_first;
    for( ; ; )
    {
        p_chk = calloc( 1, sizeof( avi_chunk_t ) );
        if( !p_chk )
        {
            i_ret = VLC_EGENERIC;
            break;
        }

        i_ret = AVI_ChunkRead( s, p_chk, p_riff );
        if( i_ret )
        {
            AVI_ChunkClean( s, p_chk );
            free( p_chk );
            break;
        }

        *pp_append = p_chk;
        while( *pp_append )
            pp_append = &((*pp_append)->common.p_next);

        if( p_chk->common.p_father->common.i_chunk_size > 0 &&
           ( vlc_stream_Tell( s ) >
             p_chk->common.p_father->common.i_chunk_pos +
             __EVEN( p_chk->common.p_father->common.i_chunk_size ) ) )
        {
            break;
        }


        if( p_chk->common.i_chunk_fourcc == AVIFOURCC_indx ||
            p_chk->common.i_chunk_fourcc == AVIFOURCC_idx1 )
        {
            break;
        }

    }

    return i_ret;
}
