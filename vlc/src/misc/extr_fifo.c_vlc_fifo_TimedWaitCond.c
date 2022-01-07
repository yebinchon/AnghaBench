
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ vlc_fifo_t ;
typedef int vlc_cond_t ;


 int vlc_cond_timedwait (int *,int *,int ) ;

int vlc_fifo_TimedWaitCond(vlc_fifo_t *fifo, vlc_cond_t *condvar, vlc_tick_t deadline)
{
    return vlc_cond_timedwait(condvar, &fifo->lock, deadline);
}
