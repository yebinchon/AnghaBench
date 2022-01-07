
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_9__ {int * p_next; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_7__ {int control; int decoder_fifo; int dummy; } ;


 int assert (int) ;
 int picture_fifo_Push (int ,TYPE_3__*) ;
 int vout_control_Wake (int *) ;

void vout_PutPicture(vout_thread_t *vout, picture_t *picture)
{
    assert(!vout->p->dummy);
    picture->p_next = ((void*)0);
    picture_fifo_Push(vout->p->decoder_fifo, picture);
    vout_control_Wake(&vout->p->control);
}
