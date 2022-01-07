
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_first; } ;
typedef TYPE_1__ fifo_t ;
typedef int fifo_item_t ;


 int assert (int ) ;

__attribute__((used)) static inline fifo_item_t *fifo_Show(fifo_t *p_fifo)
{
    fifo_item_t *b;

    assert(p_fifo->p_first != ((void*)0));
    b = p_fifo->p_first;

    return b;
}
