
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int block_t ;
struct TYPE_3__ {scalar_t__ i_size; scalar_t__ i_depth; int * p_first; int ** pp_last; int lock; } ;
typedef TYPE_1__ block_fifo_t ;


 int vlc_mutex_assert (int *) ;

block_t *vlc_fifo_DequeueAllUnlocked(block_fifo_t *fifo)
{
    vlc_mutex_assert(&fifo->lock);

    block_t *block = fifo->p_first;

    fifo->p_first = ((void*)0);
    fifo->pp_last = &fifo->p_first;
    fifo->i_depth = 0;
    fifo->i_size = 0;

    return block;
}
