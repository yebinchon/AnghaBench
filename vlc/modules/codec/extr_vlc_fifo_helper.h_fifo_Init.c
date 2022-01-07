
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_depth; int * p_first; int ** pp_last; } ;
typedef TYPE_1__ fifo_t ;



__attribute__((used)) static inline void fifo_Init(fifo_t *p_fifo)
{
    p_fifo->p_first = ((void*)0);
    p_fifo->pp_last = &p_fifo->p_first;
    p_fifo->i_depth = 0;
}
