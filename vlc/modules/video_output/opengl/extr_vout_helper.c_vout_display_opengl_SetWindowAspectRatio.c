
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int projection_mode; } ;
struct TYPE_8__ {float f_sar; int prgm; TYPE_1__ fmt; } ;
typedef TYPE_2__ vout_display_opengl_t ;


 int UpdateFOVy (TYPE_2__*) ;
 int UpdateZ (TYPE_2__*) ;
 int getViewpointMatrixes (TYPE_2__*,int ,int ) ;

void vout_display_opengl_SetWindowAspectRatio(vout_display_opengl_t *vgl,
                                              float f_sar)
{



    vgl->f_sar = f_sar;
    UpdateFOVy(vgl);
    UpdateZ(vgl);
    getViewpointMatrixes(vgl, vgl->fmt.projection_mode, vgl->prgm);
}
