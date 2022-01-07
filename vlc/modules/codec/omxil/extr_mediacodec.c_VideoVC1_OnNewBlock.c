
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_6__ {int* p_buffer; int i_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_ENOMEM ;
 int Video_OnNewBlock (int *,TYPE_1__**) ;
 TYPE_1__* block_Realloc (TYPE_1__*,int,int ) ;

__attribute__((used)) static int VideoVC1_OnNewBlock(decoder_t *p_dec, block_t **pp_block)
{
    block_t *p_block = *pp_block;


    p_block = *pp_block = block_Realloc(p_block, 4, p_block->i_buffer);
    if (p_block == ((void*)0))
        return VLC_ENOMEM;
    p_block->p_buffer[0] = 0x00;
    p_block->p_buffer[1] = 0x00;
    p_block->p_buffer[2] = 0x01;
    p_block->p_buffer[3] = 0x0d;

    return Video_OnNewBlock(p_dec, pp_block);
}
