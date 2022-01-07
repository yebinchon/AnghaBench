
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int wl; } ;
struct TYPE_9__ {TYPE_2__ display; TYPE_4__* sys; } ;
typedef TYPE_3__ vout_window_t ;
struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct TYPE_10__ {int lock; TYPE_1__ set; int toplevel; } ;
typedef TYPE_4__ vout_window_sys_t ;


 int ReportSize (TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int wl_display_flush (int ) ;
 int xdg_toplevel_set_max_size (int ,unsigned int,unsigned int) ;
 int xdg_toplevel_set_min_size (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void Resize(vout_window_t *wnd, unsigned width, unsigned height)
{
    vout_window_sys_t *sys = wnd->sys;
    vlc_mutex_lock(&sys->lock);
    sys->set.width = width;
    sys->set.height = height;
    ReportSize(wnd);
    vlc_mutex_unlock(&sys->lock);
    wl_display_flush(wnd->display.wl);
}
