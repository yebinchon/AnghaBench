
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int i_pic_pitch; int p_pic_buffer; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int * vlc_tick_t ;
typedef int subpicture_t ;
typedef int picture_t ;


 int VLC_UNUSED (int *) ;
 int picture_CopyPixels (int *,int *) ;
 int picture_UpdatePlanes (int *,int ,int ) ;

__attribute__((used)) static void Prepare(vout_display_t *vd, picture_t *picture, subpicture_t *subpic,
                    vlc_tick_t date)
{
    VLC_UNUSED(subpic);
    VLC_UNUSED(date);
    vout_display_sys_t *sys = vd->sys;
    picture_t fake_pic = *picture;
    picture_UpdatePlanes(&fake_pic, sys->p_pic_buffer, sys->i_pic_pitch);
    picture_CopyPixels(&fake_pic, picture);
}
