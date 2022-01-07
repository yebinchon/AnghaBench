
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_3__ {int lock; int * first; } ;
typedef TYPE_1__ picture_fifo_t ;


 int picture_Hold (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

picture_t *picture_fifo_Peek(picture_fifo_t *fifo)
{
    vlc_mutex_lock(&fifo->lock);
    picture_t *picture = fifo->first;
    if (picture)
        picture_Hold(picture);
    vlc_mutex_unlock(&fifo->lock);

    return picture;
}
