
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t i_buffer; int * p_buffer; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* block_Alloc (size_t) ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static bool block_Split( block_t **pp_block, block_t **pp_remain, size_t i_offset )
{
    block_t *p_block = *pp_block;
    block_t *p_split = ((void*)0);
    *pp_remain = ((void*)0);

    size_t i_tocopy = p_block->i_buffer - i_offset;
    if( i_tocopy > i_offset )
    {
        if( i_offset > 0 )
        {
            p_split = block_Alloc( i_offset );
            if( p_split == ((void*)0) )
                return 0;
            memcpy( p_split->p_buffer, p_block->p_buffer, i_offset );
            p_block->p_buffer += i_offset;
            p_block->i_buffer -= i_offset;
        }
        *pp_remain = p_block;
        *pp_block = p_split;
    }
    else
    {
        if( i_tocopy > 0 )
        {
            p_split = block_Alloc( i_tocopy );
            if( p_split == ((void*)0) )
                return 0;
            memcpy( p_split->p_buffer, &p_block->p_buffer[i_offset], i_tocopy );
            p_block->i_buffer -= i_tocopy;
        }
        *pp_remain = p_split;
    }
    return 1;
}
