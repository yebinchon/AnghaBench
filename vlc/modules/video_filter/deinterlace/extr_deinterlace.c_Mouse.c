
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int i_y; } ;
typedef TYPE_3__ vlc_mouse_t ;
struct TYPE_14__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_11__ {scalar_t__ b_half_height; } ;
struct TYPE_12__ {TYPE_1__ settings; } ;
struct TYPE_15__ {TYPE_2__ context; } ;
typedef TYPE_5__ filter_sys_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (TYPE_3__ const*) ;

int Mouse( filter_t *p_filter,
           vlc_mouse_t *p_mouse,
           const vlc_mouse_t *p_old, const vlc_mouse_t *p_new )
{
    VLC_UNUSED(p_old);
    *p_mouse = *p_new;
    filter_sys_t *p_sys = p_filter->p_sys;
    if( p_sys->context.settings.b_half_height )
        p_mouse->i_y *= 2;
    return VLC_SUCCESS;
}
