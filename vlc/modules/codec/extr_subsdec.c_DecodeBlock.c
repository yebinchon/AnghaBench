
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int subpicture_t ;
typedef int decoder_t ;
struct TYPE_5__ {int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int * ParseText (int *,TYPE_1__*) ;
 int VLCDEC_SUCCESS ;
 int block_Release (TYPE_1__*) ;
 int decoder_QueueSub (int *,int *) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    subpicture_t *p_spu;

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    p_spu = ParseText( p_dec, p_block );

    block_Release( p_block );
    if( p_spu != ((void*)0) )
        decoder_QueueSub( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}
