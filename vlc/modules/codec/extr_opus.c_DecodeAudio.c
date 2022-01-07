
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;
typedef int block_t ;


 int * DecodeBlock (int *,int *) ;
 int VLCDEC_SUCCESS ;
 int decoder_QueueAudio (int *,int *) ;

__attribute__((used)) static int DecodeAudio( decoder_t *p_dec, block_t *p_block )
{
    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    p_block = DecodeBlock( p_dec, p_block );
    if( p_block != ((void*)0) )
        decoder_QueueAudio( p_dec, p_block );
    return VLCDEC_SUCCESS;
}
