
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_6__ {TYPE_1__* first; TYPE_1__** last_ptr; } ;
typedef TYPE_2__ picture_fifo_t ;



__attribute__((used)) static picture_t *PictureFifoPop(picture_fifo_t *fifo)
{
    picture_t *picture = fifo->first;

    if (picture) {
        fifo->first = picture->p_next;
        if (!fifo->first)
            fifo->last_ptr = &fifo->first;
        picture->p_next = ((void*)0);
    }
    return picture;
}
