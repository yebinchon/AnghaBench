
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_block; } ;
typedef TYPE_1__ decoder_sys_t ;
struct TYPE_6__ {size_t i_buffer; int* p_buffer; } ;
typedef TYPE_2__ block_t ;


 int block_Release (TYPE_2__*) ;

__attribute__((used)) static void FlushBuffer( decoder_sys_t *p_sys, size_t i_used )
{
    block_t *p_block = p_sys->p_block;
    if( p_block )
    {
        if( i_used < p_block->i_buffer )
        {

            for( ; i_used < p_block->i_buffer; i_used++ )
                if( p_block->p_buffer[i_used] != 0x00 )
                    break;

            p_block->i_buffer -= i_used;
            p_block->p_buffer += i_used;
        }
        else p_block->i_buffer = 0;
        if( p_block->i_buffer == 0 )
        {
            block_Release( p_block );
            p_sys->p_block = ((void*)0);
        }
    }
}
