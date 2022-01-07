
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* p_start; int i_size; unsigned char* p_buffer; int i_buffer; struct TYPE_3__* p_next; } ;
typedef TYPE_1__ block_t ;


 int assert (int) ;

__attribute__((used)) static void block_Check (block_t *block)
{
    while (block != ((void*)0))
    {
        unsigned char *start = block->p_start;
        unsigned char *end = block->p_start + block->i_size;
        unsigned char *bufstart = block->p_buffer;
        unsigned char *bufend = block->p_buffer + block->i_buffer;

        assert (start <= end);
        assert (bufstart <= bufend);
        assert (bufstart >= start);
        assert (bufend <= end);

        block = block->p_next;
    }
}
