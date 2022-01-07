
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int projection_mode; } ;
struct TYPE_11__ {float f_fovx; int prgm; TYPE_1__ fmt; int vp; } ;
typedef TYPE_2__ vout_display_opengl_t ;
struct TYPE_12__ {float fov; } ;
typedef TYPE_3__ vlc_viewpoint_t ;


 float FIELD_OF_VIEW_DEGREES_MAX ;
 float FIELD_OF_VIEW_DEGREES_MIN ;
 scalar_t__ M_PI ;
 int UpdateFOVy (TYPE_2__*) ;
 int UpdateZ (TYPE_2__*) ;
 int VLC_EBADVAR ;
 int VLC_SUCCESS ;
 float fabsf (float) ;
 int getViewpointMatrixes (TYPE_2__*,int ,int ) ;
 int vlc_viewpoint_reverse (int *,TYPE_3__ const*) ;

int vout_display_opengl_SetViewpoint(vout_display_opengl_t *vgl,
                                     const vlc_viewpoint_t *p_vp)
{
    if (p_vp->fov > FIELD_OF_VIEW_DEGREES_MAX
            || p_vp->fov < FIELD_OF_VIEW_DEGREES_MIN)
        return VLC_EBADVAR;


    float f_fovx = p_vp->fov * (float)M_PI / 180.f;


    vlc_viewpoint_reverse(&vgl->vp, p_vp);

    if (fabsf(f_fovx - vgl->f_fovx) >= 0.001f)
    {

        vgl->f_fovx = f_fovx;
        UpdateFOVy(vgl);
        UpdateZ(vgl);
    }
    getViewpointMatrixes(vgl, vgl->fmt.projection_mode, vgl->prgm);

    return VLC_SUCCESS;
}
