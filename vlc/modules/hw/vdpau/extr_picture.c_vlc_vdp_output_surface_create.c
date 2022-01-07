
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int surface; int device; scalar_t__ gl_nv_surface; int vdp; } ;
typedef TYPE_1__ vlc_vdp_output_surface_t ;
struct TYPE_10__ {int i_visible_height; int i_visible_width; } ;
typedef TYPE_2__ video_format_t ;
typedef int vdp_t ;
typedef int picture_t ;
struct TYPE_11__ {int pf_destroy; TYPE_1__* p_sys; } ;
typedef TYPE_3__ picture_resource_t ;
typedef scalar_t__ VdpStatus ;
typedef int VdpRGBAFormat ;


 scalar_t__ VDP_STATUS_OK ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int * picture_NewFromResource (TYPE_2__ const*,TYPE_3__*) ;
 scalar_t__ unlikely (int ) ;
 int vdp_hold_x11 (int *,int *) ;
 scalar_t__ vdp_output_surface_create (int *,int ,int ,int ,int ,int *) ;
 int vdp_output_surface_destroy (int *,int ) ;
 int vdp_release_x11 (int *) ;
 int vlc_vdp_output_surface_destroy ;

__attribute__((used)) static
picture_t *vlc_vdp_output_surface_create(vdp_t *vdp, VdpRGBAFormat rgb_fmt,
                                         const video_format_t *restrict fmt)
{
    vlc_vdp_output_surface_t *sys = malloc(sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return ((void*)0);

    sys->vdp = vdp_hold_x11(vdp, &sys->device);
    sys->gl_nv_surface = 0;

    VdpStatus err = vdp_output_surface_create(vdp, sys->device, rgb_fmt,
        fmt->i_visible_width, fmt->i_visible_height, &sys->surface);
    if (err != VDP_STATUS_OK)
    {
error:
        vdp_release_x11(vdp);
        free(sys);
        return ((void*)0);
    }

    picture_resource_t res = {
        .p_sys = sys,
        .pf_destroy = vlc_vdp_output_surface_destroy,
    };

    picture_t *pic = picture_NewFromResource(fmt, &res);
    if (unlikely(pic == ((void*)0)))
    {
        vdp_output_surface_destroy(vdp, sys->surface);
        goto error;
    }
    return pic;
}
