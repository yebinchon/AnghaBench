
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdp; int surface; } ;
typedef TYPE_1__ vlc_vdp_output_surface_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ picture_t ;


 int free (TYPE_1__*) ;
 int vdp_output_surface_destroy (int ,int ) ;
 int vdp_release_x11 (int ) ;

__attribute__((used)) static void vlc_vdp_output_surface_destroy(picture_t *pic)
{
    vlc_vdp_output_surface_t *sys = pic->p_sys;

    vdp_output_surface_destroy(sys->vdp, sys->surface);
    vdp_release_x11(sys->vdp);
    free(sys);
}
