
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
typedef int picture_t ;
struct TYPE_4__ {int decoder_fifo; int dummy; } ;


 int assert (int) ;
 int picture_Release (int *) ;
 int * picture_fifo_Peek (int ) ;

bool vout_IsEmpty(vout_thread_t *vout)
{
    assert(!vout->p->dummy);
    if (!vout->p->decoder_fifo)
        return 1;

    picture_t *picture = picture_fifo_Peek(vout->p->decoder_fifo);
    if (picture)
        picture_Release(picture);

    return !picture;
}
