
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int conn; int vdp; int * current; int target; int queue; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int free (TYPE_2__*) ;
 int picture_Release (int *) ;
 int vdp_presentation_queue_destroy (int ,int ) ;
 int vdp_presentation_queue_target_destroy (int ,int ) ;
 int vdp_release_x11 (int ) ;
 int xcb_disconnect (int ) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    vdp_presentation_queue_destroy(sys->vdp, sys->queue);
    vdp_presentation_queue_target_destroy(sys->vdp, sys->target);

    if (sys->current != ((void*)0))
        picture_Release(sys->current);

    vdp_release_x11(sys->vdp);
    xcb_disconnect(sys->conn);
    free(sys);
}
