
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_9__ {scalar_t__ phase_offset; int adjust_refresh_rate; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int vlc_tick_t ;
typedef int subpicture_t ;
struct TYPE_10__ {int date; TYPE_4__* p_sys; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_11__ {scalar_t__ displayed; } ;
typedef TYPE_4__ picture_sys_t ;


 int VLC_UNUSED (int ) ;
 int vd_manage (TYPE_1__*) ;

__attribute__((used)) static void vd_prepare(vout_display_t *vd, picture_t *picture,
                       subpicture_t *subpicture, vlc_tick_t date)
{
    vd_manage(vd);
    VLC_UNUSED(date);
    vout_display_sys_t *sys = vd->sys;
    picture_sys_t *pic_sys = picture->p_sys;

    if (!sys->adjust_refresh_rate || pic_sys->displayed)
        return;



    picture->date += sys->phase_offset;
}
