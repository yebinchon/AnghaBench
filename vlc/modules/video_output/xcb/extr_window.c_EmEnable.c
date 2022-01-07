
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_8__ {int wm_state_fullscreen; } ;
typedef TYPE_2__ vout_window_sys_t ;
struct TYPE_9__ {int is_fullscreen; } ;
typedef TYPE_3__ vout_window_cfg_t ;


 int VLC_SUCCESS ;
 int change_wm_state (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int EmEnable(vout_window_t *wnd, const vout_window_cfg_t *restrict cfg)
{
    vout_window_sys_t *sys = wnd->sys;

    change_wm_state(wnd, cfg->is_fullscreen, sys->wm_state_fullscreen);
    return VLC_SUCCESS;
}
