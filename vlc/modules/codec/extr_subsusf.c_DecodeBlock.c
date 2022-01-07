
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpicture_t ;
typedef int decoder_t ;
typedef int block_t ;


 int * ParseText (int *,int *) ;
 int VLCDEC_SUCCESS ;
 int block_Release (int *) ;
 int decoder_QueueSub (int *,int *) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    subpicture_t *p_spu;

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    p_spu = ParseText( p_dec, p_block );

    block_Release( p_block );
    if( p_spu != ((void*)0) )
        decoder_QueueSub( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}
