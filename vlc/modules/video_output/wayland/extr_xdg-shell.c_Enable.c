
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int wl; } ;
struct TYPE_13__ {struct wl_display* wl; } ;
struct TYPE_14__ {TYPE_1__ handle; TYPE_3__ display; TYPE_5__* sys; } ;
typedef TYPE_4__ vout_window_t ;
struct TYPE_12__ {int configured; } ;
struct TYPE_15__ {TYPE_2__ wm; int toplevel; } ;
typedef TYPE_5__ vout_window_sys_t ;
struct TYPE_16__ {int height; int width; scalar_t__ is_decorated; scalar_t__ is_fullscreen; } ;
typedef TYPE_6__ vout_window_cfg_t ;
struct wl_display {int dummy; } ;


 int SetDecoration (TYPE_4__*,scalar_t__) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vout_window_SetSize (TYPE_4__*,int ,int ) ;
 int wl_display_dispatch (struct wl_display*) ;
 int wl_display_flush (struct wl_display*) ;
 int wl_surface_commit (int ) ;
 int xdg_toplevel_set_fullscreen (int ,int *) ;
 int xdg_toplevel_unset_fullscreen (int ) ;

__attribute__((used)) static int Enable(vout_window_t *wnd, const vout_window_cfg_t *restrict cfg)
{
    vout_window_sys_t *sys = wnd->sys;
    struct wl_display *display = wnd->display.wl;

    if (cfg->is_fullscreen)
        xdg_toplevel_set_fullscreen(sys->toplevel, ((void*)0));
    else
        xdg_toplevel_unset_fullscreen(sys->toplevel);




    if (cfg->is_decorated)
        return VLC_EGENERIC;

    vout_window_SetSize(wnd, cfg->width, cfg->height);
    wl_surface_commit(wnd->handle.wl);
    wl_display_flush(display);






    return VLC_SUCCESS;
}
