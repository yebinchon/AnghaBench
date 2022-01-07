
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int i_y; int i_x; } ;
typedef TYPE_2__ vlc_mouse_t ;
struct TYPE_13__ {int i_visible_height; int i_visible_width; } ;
typedef TYPE_3__ video_format_t ;
struct TYPE_11__ {TYPE_3__ video; } ;
struct TYPE_14__ {TYPE_5__* p_sys; TYPE_1__ fmt_out; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_15__ {int (* convert ) (int *,int *,int ,int ,int ,int ) ;} ;
typedef TYPE_5__ filter_sys_t ;


 int VLC_SUCCESS ;
 int VLC_UNUSED (TYPE_2__ const*) ;
 int stub1 (int *,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int Mouse(filter_t *filter, vlc_mouse_t *mouse,
                 const vlc_mouse_t *mold, const vlc_mouse_t *mnew)
{
    VLC_UNUSED( mold );

    const video_format_t *fmt = &filter->fmt_out.video;
    const filter_sys_t *sys = filter->p_sys;

    *mouse = *mnew;
    sys->convert(&mouse->i_x, &mouse->i_y,
                 fmt->i_visible_width, fmt->i_visible_height,
                 mouse->i_x, mouse->i_y);
    return VLC_SUCCESS;
}
