
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* p_next; scalar_t__ i_buffer; } ;
typedef TYPE_1__ block_t ;
struct TYPE_7__ {int i_size; int i_depth; TYPE_1__** pp_last; int lock; } ;
typedef TYPE_2__ block_fifo_t ;


 int assert (int ) ;
 int vlc_fifo_Signal (TYPE_2__*) ;
 int vlc_mutex_assert (int *) ;

void vlc_fifo_QueueUnlocked(block_fifo_t *fifo, block_t *block)
{
    vlc_mutex_assert(&fifo->lock);
    assert(*(fifo->pp_last) == ((void*)0));

    *(fifo->pp_last) = block;

    while (block != ((void*)0))
    {
        fifo->pp_last = &block->p_next;
        fifo->i_depth++;
        fifo->i_size += block->i_buffer;

        block = block->p_next;
    }

    vlc_fifo_Signal(fifo);
}
