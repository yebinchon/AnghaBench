
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_depth; int lock; } ;
typedef TYPE_1__ vlc_fifo_t ;


 int vlc_mutex_assert (int *) ;

size_t vlc_fifo_GetCount(const vlc_fifo_t *fifo)
{
    vlc_mutex_assert(&fifo->lock);
    return fifo->i_depth;
}
