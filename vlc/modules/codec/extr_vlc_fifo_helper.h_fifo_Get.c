
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_depth; TYPE_2__* p_first; TYPE_2__** pp_last; } ;
typedef TYPE_1__ fifo_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ fifo_item_t ;


 int assert (int) ;

__attribute__((used)) static inline fifo_item_t *fifo_Get(fifo_t *fifo)
{
    fifo_item_t *block = fifo->p_first;

    if (block == ((void*)0))
        return ((void*)0);

    fifo->p_first = block->p_next;
    if (block->p_next == ((void*)0))
        fifo->pp_last = &fifo->p_first;
    block->p_next = ((void*)0);

    assert(fifo->i_depth > 0);
    fifo->i_depth--;

    return block;
}
