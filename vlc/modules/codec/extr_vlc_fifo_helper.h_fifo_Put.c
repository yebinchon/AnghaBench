
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_depth; TYPE_2__** pp_last; } ;
typedef TYPE_1__ fifo_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ fifo_item_t ;



__attribute__((used)) static inline void fifo_Put(fifo_t *fifo, fifo_item_t *p_item)
{
    *(fifo->pp_last) = p_item;

    while (p_item != ((void*)0))
    {
        fifo->pp_last = &p_item->p_next;
        fifo->i_depth++;

        p_item = p_item->p_next;
    }
}
