
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_size; int lock; } ;
typedef TYPE_1__ block_fifo_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

size_t block_FifoSize (block_fifo_t *fifo)
{
    size_t size;

    vlc_mutex_lock (&fifo->lock);
    size = fifo->i_size;
    vlc_mutex_unlock (&fifo->lock);
    return size;
}
