
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wait; } ;
typedef TYPE_1__ vlc_fifo_t ;


 int vlc_fifo_WaitCond (TYPE_1__*,int *) ;

void vlc_fifo_Wait(vlc_fifo_t *fifo)
{
    vlc_fifo_WaitCond(fifo, &fifo->wait);
}
