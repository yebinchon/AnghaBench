
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int decoder_t ;
typedef int block_t ;


 int * DecodeBlock (int *,int *) ;
 int VLCDEC_SUCCESS ;
 int decoder_QueueVideo (int *,int *) ;

__attribute__((used)) static int DecodeVideo( decoder_t *p_dec, block_t *p_block )
{
    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    picture_t *p_pic = DecodeBlock( p_dec, p_block );
    if( p_pic != ((void*)0) )
        decoder_QueueVideo( p_dec, p_pic );
    return VLCDEC_SUCCESS;
}
