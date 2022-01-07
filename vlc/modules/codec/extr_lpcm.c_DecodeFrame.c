
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;
typedef int block_t ;


 int * Packetize (int *,int **) ;
 int VLCDEC_SUCCESS ;
 int decoder_QueueAudio (int *,int *) ;

__attribute__((used)) static int DecodeFrame( decoder_t *p_dec, block_t *p_block )
{
    block_t *p_out = Packetize( p_dec, &p_block );
    if( p_out != ((void*)0) )
        decoder_QueueAudio( p_dec, p_out );
    return VLCDEC_SUCCESS;
}
