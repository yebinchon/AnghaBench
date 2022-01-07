
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_depth; } ;
typedef TYPE_1__ fifo_t ;



__attribute__((used)) static inline size_t fifo_GetCount(fifo_t *fifo)
{
    return fifo->i_depth;
}
