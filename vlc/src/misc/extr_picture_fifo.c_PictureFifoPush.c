
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_6__ {TYPE_1__** last_ptr; } ;
typedef TYPE_2__ picture_fifo_t ;


 int assert (int) ;

__attribute__((used)) static void PictureFifoPush(picture_fifo_t *fifo, picture_t *picture)
{
    assert(!picture->p_next);
    *fifo->last_ptr = picture;
    fifo->last_ptr = &picture->p_next;
}
