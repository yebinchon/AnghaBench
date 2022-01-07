
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_depth; int lock; } ;
typedef TYPE_1__ block_fifo_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

size_t block_FifoCount (block_fifo_t *fifo)
{
    size_t depth;

    vlc_mutex_lock (&fifo->lock);
    depth = fifo->i_depth;
    vlc_mutex_unlock (&fifo->lock);
    return depth;
}
