
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
struct TYPE_11__ {scalar_t__ i_chunk_fourcc; TYPE_2__* p_father; } ;
struct TYPE_12__ {TYPE_1__ common; } ;
typedef TYPE_2__ avi_chunk_t ;
struct TYPE_13__ {int (* AVI_ChunkRead_function ) (int *,TYPE_2__*) ;} ;


 scalar_t__ AVIFOURCC_indx ;
 int AVI_ChunkFunctionFind (scalar_t__) ;
 scalar_t__ AVI_ChunkReadCommon (int *,TYPE_2__*,TYPE_2__*) ;
 int AVI_ChunkRead_indx (int *,TYPE_2__*) ;
 TYPE_5__* AVI_Chunk_Function ;
 int AVI_NextChunk (int *,TYPE_2__*) ;
 int AVI_ZERO_FOURCC ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_FOURCC (int ,int ,int ,int ) ;
 int msg_Warn (int *,char*,...) ;
 int stub1 (int *,TYPE_2__*) ;

int AVI_ChunkRead( stream_t *s, avi_chunk_t *p_chk, avi_chunk_t *p_father )
{
    int i_index;

    if( !p_chk )
    {
        msg_Warn( (vlc_object_t*)s, "cannot read null chunk" );
        return VLC_EGENERIC;
    }

    if( AVI_ChunkReadCommon( s, p_chk, p_father ) )
        return VLC_EGENERIC;

    if( p_chk->common.i_chunk_fourcc == VLC_FOURCC( 0, 0, 0, 0 ) )
    {
        msg_Warn( (vlc_object_t*)s, "found null fourcc chunk (corrupted file?)" );
        return AVI_ZERO_FOURCC;
    }
    p_chk->common.p_father = p_father;

    i_index = AVI_ChunkFunctionFind( p_chk->common.i_chunk_fourcc );
    if( AVI_Chunk_Function[i_index].AVI_ChunkRead_function )
    {
        return AVI_Chunk_Function[i_index].AVI_ChunkRead_function( s, p_chk );
    }
    else if( ( ((char*)&p_chk->common.i_chunk_fourcc)[0] == 'i' &&
               ((char*)&p_chk->common.i_chunk_fourcc)[1] == 'x' ) ||
             ( ((char*)&p_chk->common.i_chunk_fourcc)[2] == 'i' &&
               ((char*)&p_chk->common.i_chunk_fourcc)[3] == 'x' ) )
    {
        p_chk->common.i_chunk_fourcc = AVIFOURCC_indx;
        return AVI_ChunkRead_indx( s, p_chk );
    }

    msg_Warn( (vlc_object_t*)s, "unknown chunk: %4.4s (not loaded)",
            (char*)&p_chk->common.i_chunk_fourcc );
    return AVI_NextChunk( s, p_chk );
}
