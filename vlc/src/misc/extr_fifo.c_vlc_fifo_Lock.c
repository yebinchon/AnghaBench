
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ vlc_fifo_t ;


 int vlc_mutex_lock (int *) ;

void vlc_fifo_Lock(vlc_fifo_t *fifo)
{
    vlc_mutex_lock(&fifo->lock);
}
