
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transcode_encoder_t ;
typedef int block_t ;


 int VLC_SUCCESS ;
 int block_ChainAppend (int **,int *) ;
 int * transcode_encoder_audio_encode (int *,int *) ;

int transcode_encoder_audio_drain( transcode_encoder_t *p_enc, block_t **out )
{
    block_t *p_block;
    do {
        p_block = transcode_encoder_audio_encode( p_enc, ((void*)0) );
        block_ChainAppend( out, p_block );
    } while( p_block );
    return VLC_SUCCESS;
}
