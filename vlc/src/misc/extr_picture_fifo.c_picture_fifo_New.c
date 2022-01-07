
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ picture_fifo_t ;


 int PictureFifoReset (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int vlc_mutex_init (int *) ;

picture_fifo_t *picture_fifo_New(void)
{
    picture_fifo_t *fifo = malloc(sizeof(*fifo));
    if (!fifo)
        return ((void*)0);

    vlc_mutex_init(&fifo->lock);
    PictureFifoReset(fifo);
    return fifo;
}
