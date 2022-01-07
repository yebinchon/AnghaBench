
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;
typedef int block_t ;


 int DecodeBlock (int *,int **) ;
 int VLCDEC_SUCCESS ;

__attribute__((used)) static int DecodeAudio( decoder_t *p_dec, block_t *p_block )
{
    block_t **pp_block = p_block ? &p_block : ((void*)0);
    int i_ret;
    do
    {
        i_ret = DecodeBlock( p_dec, pp_block );
    }
    while( i_ret == VLCDEC_SUCCESS && pp_block && *pp_block );

    return i_ret;
}
