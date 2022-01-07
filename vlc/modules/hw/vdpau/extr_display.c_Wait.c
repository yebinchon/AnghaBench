
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xcb_generic_event_t ;
struct TYPE_11__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_12__ {int conn; TYPE_4__* current; int vdp; int queue; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct TYPE_13__ {int surface; } ;
typedef TYPE_3__ vlc_vdp_output_surface_t ;
struct TYPE_14__ {TYPE_3__* p_sys; } ;
typedef TYPE_4__ picture_t ;
typedef int VdpTime ;
typedef scalar_t__ VdpStatus ;


 scalar_t__ VDP_STATUS_OK ;
 int free (int *) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 TYPE_4__* picture_Hold (TYPE_4__*) ;
 int picture_Release (TYPE_4__*) ;
 int vdp_get_error_string (int ,scalar_t__) ;
 scalar_t__ vdp_presentation_queue_block_until_surface_idle (int ,int ,int ,int *) ;
 int * xcb_poll_for_event (int ) ;

__attribute__((used)) static void Wait(vout_display_t *vd, picture_t *pic)
{
    vout_display_sys_t *sys = vd->sys;
    xcb_generic_event_t *ev;

    picture_t *current = sys->current;
    if (current != ((void*)0))
    {
        vlc_vdp_output_surface_t *psys = current->p_sys;
        VdpTime pts;
        VdpStatus err;

        err = vdp_presentation_queue_block_until_surface_idle(sys->vdp,
                                              sys->queue, psys->surface, &pts);
        if (err != VDP_STATUS_OK)
        {
            msg_Err(vd, "presentation queue blocking error: %s",
                    vdp_get_error_string(sys->vdp, err));
            goto out;
        }
        picture_Release(current);
    }

    sys->current = picture_Hold(pic);
out:


    while ((ev = xcb_poll_for_event(sys->conn)) != ((void*)0))
        free(ev);
}
