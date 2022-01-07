
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * first; int ** last_ptr; } ;
typedef TYPE_1__ picture_fifo_t ;



__attribute__((used)) static void PictureFifoReset(picture_fifo_t *fifo)
{
    fifo->first = ((void*)0);
    fifo->last_ptr = &fifo->first;
}
