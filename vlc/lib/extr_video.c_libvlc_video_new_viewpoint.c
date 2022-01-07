
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float f_yaw; float f_pitch; float f_roll; float f_field_of_view; } ;
typedef TYPE_1__ libvlc_video_viewpoint_t ;


 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;

libvlc_video_viewpoint_t *libvlc_video_new_viewpoint(void)
{
    libvlc_video_viewpoint_t *p_vp = malloc(sizeof *p_vp);
    if (unlikely(p_vp == ((void*)0)))
        return ((void*)0);
    p_vp->f_yaw = p_vp->f_pitch = p_vp->f_roll = p_vp->f_field_of_view = 0.0f;
    return p_vp;
}
