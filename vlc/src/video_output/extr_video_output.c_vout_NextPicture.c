
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* p; } ;
typedef TYPE_4__ vout_thread_t ;
typedef scalar_t__ vlc_tick_t ;
struct TYPE_8__ {scalar_t__ last; scalar_t__ timestamp; } ;
struct TYPE_7__ {scalar_t__ timestamp; } ;
struct TYPE_9__ {int display; int control; TYPE_2__ step; TYPE_1__ displayed; int dummy; } ;


 scalar_t__ ThreadDisplayPicture (TYPE_4__*,int *) ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 int vout_control_Hold (int *) ;
 int vout_control_Release (int *) ;

void vout_NextPicture(vout_thread_t *vout, vlc_tick_t *duration)
{
    assert(!vout->p->dummy);
    assert(vout->p->display);
    *duration = 0;

    vout_control_Hold(&vout->p->control);
    if (vout->p->step.last == VLC_TICK_INVALID)
        vout->p->step.last = vout->p->displayed.timestamp;

    if (ThreadDisplayPicture(vout, ((void*)0)) == 0) {
        vout->p->step.timestamp = vout->p->displayed.timestamp;

        if (vout->p->step.last != VLC_TICK_INVALID &&
            vout->p->step.timestamp > vout->p->step.last) {
            *duration = vout->p->step.timestamp - vout->p->step.last;
            vout->p->step.last = vout->p->step.timestamp;

        }
    }
    vout_control_Release(&vout->p->control);
}
