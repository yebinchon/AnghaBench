
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* p_buffer; int i_buffer; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* AV1_Unpack_Sample_ExpandSize (TYPE_1__*) ;
 TYPE_1__* block_Realloc (TYPE_1__*,int,int ) ;

__attribute__((used)) static inline block_t * AV1_Unpack_Sample(block_t *p_block)
{

    p_block = AV1_Unpack_Sample_ExpandSize(p_block);

    if(p_block &&
       (p_block->p_buffer[0] & 0x81) == 0 &&
       (p_block->p_buffer[0] & 0x7A) != 0x12)
    {
        p_block = block_Realloc(p_block, 2, p_block->i_buffer);
        if(p_block)
        {
            p_block->p_buffer[0] = 0x12;
            p_block->p_buffer[1] = 0x00;
        }
    }
    return p_block;
}
