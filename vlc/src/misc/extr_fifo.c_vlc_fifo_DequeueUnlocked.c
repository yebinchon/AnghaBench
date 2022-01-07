
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_buffer; struct TYPE_5__* p_next; } ;
typedef TYPE_1__ block_t ;
struct TYPE_6__ {scalar_t__ i_depth; scalar_t__ i_size; TYPE_1__* p_first; TYPE_1__** pp_last; int lock; } ;
typedef TYPE_2__ block_fifo_t ;


 int assert (int) ;
 int vlc_mutex_assert (int *) ;

block_t *vlc_fifo_DequeueUnlocked(block_fifo_t *fifo)
{
    vlc_mutex_assert(&fifo->lock);

    block_t *block = fifo->p_first;

    if (block == ((void*)0))
        return ((void*)0);

    fifo->p_first = block->p_next;
    if (block->p_next == ((void*)0))
        fifo->pp_last = &fifo->p_first;
    block->p_next = ((void*)0);

    assert(fifo->i_depth > 0);
    fifo->i_depth--;
    assert(fifo->i_size >= block->i_buffer);
    fifo->i_size -= block->i_buffer;

    return block;
}
