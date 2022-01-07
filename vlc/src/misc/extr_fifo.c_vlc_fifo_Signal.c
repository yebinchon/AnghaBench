
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait; } ;
typedef TYPE_1__ vlc_fifo_t ;


 int vlc_cond_signal (int *) ;

void vlc_fifo_Signal(vlc_fifo_t *fifo)
{
    vlc_cond_signal(&fifo->wait);
}
