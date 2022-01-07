
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int wl; } ;
struct TYPE_7__ {int * wl; } ;
struct TYPE_9__ {TYPE_2__ display; TYPE_1__ handle; TYPE_4__* sys; } ;
typedef TYPE_3__ vout_window_t ;
struct TYPE_10__ {int registry; int compositor; int * shm; int wm_base; int surface; int toplevel; int * cursor_theme; int * cursor_surface; int * deco_manager; int * deco; int outputs; int seats; int lock; int thread; } ;
typedef TYPE_4__ vout_window_sys_t ;


 int free (TYPE_4__*) ;
 int output_list_destroy (int ) ;
 int seat_destroy_all (int *) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int wl_compositor_destroy (int ) ;
 int wl_cursor_theme_destroy (int *) ;
 int wl_display_disconnect (int ) ;
 int wl_registry_destroy (int ) ;
 int wl_shm_destroy (int *) ;
 int wl_surface_destroy (int *) ;
 int xdg_surface_destroy (int ) ;
 int xdg_toplevel_destroy (int ) ;
 int xdg_wm_base_destroy (int ) ;
 int zxdg_decoration_manager_v1_destroy (int *) ;
 int zxdg_toplevel_decoration_v1_destroy (int *) ;

__attribute__((used)) static void Close(vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;

    vlc_cancel(sys->thread);
    vlc_join(sys->thread, ((void*)0));

    vlc_mutex_destroy(&sys->lock);
    seat_destroy_all(&sys->seats);
    output_list_destroy(sys->outputs);






    if (sys->cursor_surface != ((void*)0))
        wl_surface_destroy(sys->cursor_surface);
    if (sys->cursor_theme != ((void*)0))
        wl_cursor_theme_destroy(sys->cursor_theme);
    xdg_toplevel_destroy(sys->toplevel);
    xdg_surface_destroy(sys->surface);
    xdg_wm_base_destroy(sys->wm_base);
    wl_surface_destroy(wnd->handle.wl);
    if (sys->shm != ((void*)0))
        wl_shm_destroy(sys->shm);
    wl_compositor_destroy(sys->compositor);
    wl_registry_destroy(sys->registry);
    wl_display_disconnect(wnd->display.wl);
    free(sys);
}
