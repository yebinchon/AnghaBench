
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_10__ {scalar_t__ date; struct TYPE_10__* p_next; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_11__ {int lock; TYPE_1__* first; } ;
typedef TYPE_2__ picture_fifo_t ;


 TYPE_1__* PictureFifoPop (TYPE_2__*) ;
 int PictureFifoPush (TYPE_2__*,TYPE_1__*) ;
 int PictureFifoReset (TYPE_2__*) ;
 scalar_t__ VLC_TICK_INVALID ;
 int picture_Release (TYPE_1__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void picture_fifo_Flush(picture_fifo_t *fifo, vlc_tick_t date, bool flush_before)
{
    picture_t *picture;

    vlc_mutex_lock(&fifo->lock);

    picture = fifo->first;
    PictureFifoReset(fifo);

    picture_fifo_t tmp;
    PictureFifoReset(&tmp);

    while (picture) {
        picture_t *next = picture->p_next;

        picture->p_next = ((void*)0);
        if ((date == VLC_TICK_INVALID) ||
            ( flush_before && picture->date <= date) ||
            (!flush_before && picture->date >= date))
            PictureFifoPush(&tmp, picture);
        else
            PictureFifoPush(fifo, picture);
        picture = next;
    }
    vlc_mutex_unlock(&fifo->lock);

    while ((picture = PictureFifoPop(&tmp)) != ((void*)0))
        picture_Release(picture);
}
