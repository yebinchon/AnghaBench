
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wl; } ;
struct TYPE_6__ {TYPE_1__ display; TYPE_3__* sys; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_7__ {unsigned long default_output; int toplevel; int registry; } ;
typedef TYPE_3__ vout_window_sys_t ;
struct wl_output {int dummy; } ;


 unsigned long UINT32_MAX ;
 int assert (int) ;
 unsigned long strtoul (char const*,char**,int) ;
 int wl_display_flush (int ) ;
 int wl_output_destroy (struct wl_output*) ;
 int wl_output_interface ;
 struct wl_output* wl_registry_bind (int ,unsigned long,int *,int) ;
 int xdg_toplevel_set_fullscreen (int ,struct wl_output*) ;

__attribute__((used)) static void SetFullscreen(vout_window_t *wnd, const char *idstr)
{
    vout_window_sys_t *sys = wnd->sys;
    struct wl_output *output = ((void*)0);

    if (idstr != ((void*)0))
    {
        char *end;
        unsigned long name = strtoul(idstr, &end, 10);

        assert(*end == '\0' && name <= UINT32_MAX);
        output = wl_registry_bind(sys->registry, name,
                                  &wl_output_interface, 1);
    }
    else
    if (sys->default_output != 0)
        output = wl_registry_bind(sys->registry, sys->default_output,
                                  &wl_output_interface, 1);

    xdg_toplevel_set_fullscreen(sys->toplevel, output);

    if (output != ((void*)0))
        wl_output_destroy(output);

    wl_display_flush(wnd->display.wl);
}
