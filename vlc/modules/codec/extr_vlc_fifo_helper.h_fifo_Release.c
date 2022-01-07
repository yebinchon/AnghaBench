
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_depth; } ;
typedef TYPE_1__ fifo_t ;


 int assert (int) ;

__attribute__((used)) static inline void fifo_Release(fifo_t *fifo)
{
    assert(fifo->i_depth == 0);
}
