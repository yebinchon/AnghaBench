
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int const* vlc_tick_t ;
typedef int video_format_t ;
struct TYPE_9__ {int * p_sys; } ;
struct TYPE_10__ {TYPE_3__* p_region; TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_11__ {struct TYPE_11__* p_next; } ;
typedef TYPE_3__ subpicture_region_t ;
typedef int bluray_spu_updater_sys_t ;
struct TYPE_12__ {int status; TYPE_3__* p_regions; } ;
typedef TYPE_4__ bluray_overlay_t ;


 int Displayed ;
 int VLC_UNUSED (int const*) ;
 TYPE_3__* subpicture_region_Copy (TYPE_3__*) ;
 TYPE_4__* updater_lock_overlay (int *) ;
 int updater_unlock_overlay (int *) ;

__attribute__((used)) static void subpictureUpdaterUpdate(subpicture_t *p_subpic,
                                    const video_format_t *p_fmt_src,
                                    const video_format_t *p_fmt_dst,
                                    vlc_tick_t i_ts)
{
    VLC_UNUSED(p_fmt_src);
    VLC_UNUSED(p_fmt_dst);
    VLC_UNUSED(i_ts);
    bluray_spu_updater_sys_t *p_upd_sys = p_subpic->updater.p_sys;
    bluray_overlay_t *p_overlay = updater_lock_overlay(p_upd_sys);

    if (!p_overlay) {
        return;
    }





    subpicture_region_t *p_src = p_overlay->p_regions;
    if (!p_src) {
        updater_unlock_overlay(p_upd_sys);
        return;
    }

    subpicture_region_t **p_dst = &p_subpic->p_region;
    while (p_src != ((void*)0)) {
        *p_dst = subpicture_region_Copy(p_src);
        if (*p_dst == ((void*)0))
            break;
        p_dst = &(*p_dst)->p_next;
        p_src = p_src->p_next;
    }
    if (*p_dst != ((void*)0))
        (*p_dst)->p_next = ((void*)0);
    p_overlay->status = Displayed;

    updater_unlock_overlay(p_upd_sys);
}
