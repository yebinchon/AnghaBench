
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ vlc_fifo_t ;
typedef int vlc_cond_t ;


 int vlc_cond_wait (int *,int *) ;

void vlc_fifo_WaitCond(vlc_fifo_t *fifo, vlc_cond_t *condvar)
{
    vlc_cond_wait(condvar, &fifo->lock);
}
