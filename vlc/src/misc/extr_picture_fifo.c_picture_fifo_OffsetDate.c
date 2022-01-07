
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; int date; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_5__ {int lock; TYPE_1__* first; } ;
typedef TYPE_2__ picture_fifo_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void picture_fifo_OffsetDate(picture_fifo_t *fifo, vlc_tick_t delta)
{
    vlc_mutex_lock(&fifo->lock);
    for (picture_t *picture = fifo->first; picture != ((void*)0);) {
        picture->date += delta;
        picture = picture->p_next;
    }
    vlc_mutex_unlock(&fifo->lock);
}
