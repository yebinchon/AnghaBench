
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ picture_fifo_t ;


 int VLC_TICK_INVALID ;
 int free (TYPE_1__*) ;
 int picture_fifo_Flush (TYPE_1__*,int ,int) ;
 int vlc_mutex_destroy (int *) ;

void picture_fifo_Delete(picture_fifo_t *fifo)
{
    picture_fifo_Flush(fifo, VLC_TICK_INVALID, 1);
    vlc_mutex_destroy(&fifo->lock);
    free(fifo);
}
