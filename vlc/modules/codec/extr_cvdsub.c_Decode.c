
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int subpicture_t ;
typedef int decoder_t ;
struct TYPE_7__ {int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int * DecodePacket (int *,TYPE_1__*) ;
 TYPE_1__* Reassemble (int *,TYPE_1__*) ;
 int VLCDEC_SUCCESS ;
 int block_Release (TYPE_1__*) ;
 int decoder_QueueSub (int *,int *) ;

__attribute__((used)) static int Decode( decoder_t *p_dec, block_t *p_block )
{
    block_t *p_data;

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    if( !(p_data = Reassemble( p_dec, p_block )) )
        return VLCDEC_SUCCESS;


    subpicture_t *p_spu = DecodePacket( p_dec, p_data );
    block_Release( p_data );
    if( p_spu != ((void*)0) )
        decoder_QueueSub( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}
