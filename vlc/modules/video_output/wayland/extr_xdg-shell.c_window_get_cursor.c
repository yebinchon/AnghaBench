
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_7__ {struct wl_surface* cursor_surface; TYPE_1__* cursor; } ;
typedef TYPE_3__ vout_window_sys_t ;
struct wl_surface {int dummy; } ;
struct wl_cursor_image {int hotspot_y; int hotspot_x; int height; int width; } ;
typedef int int32_t ;
struct TYPE_5__ {scalar_t__ image_count; struct wl_cursor_image** images; } ;


 int assert (int) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int ) ;
 int wl_cursor_image_get_buffer (struct wl_cursor_image*) ;
 int wl_surface_attach (struct wl_surface*,int ,int ,int ) ;
 int wl_surface_commit (struct wl_surface*) ;
 int wl_surface_damage (struct wl_surface*,int ,int ,int ,int ) ;

struct wl_surface *window_get_cursor(vout_window_t *wnd, int32_t *restrict hsx,
                                     int32_t *restrict hsy)
{
    vout_window_sys_t *sys = wnd->sys;

    if (unlikely(sys->cursor == ((void*)0)))
        return ((void*)0);

    assert(sys->cursor->image_count > 0);


    struct wl_cursor_image *img = sys->cursor->images[0];
    struct wl_surface *surface = sys->cursor_surface;

    if (likely(surface != ((void*)0)))
    {
        wl_surface_attach(surface, wl_cursor_image_get_buffer(img), 0, 0);
        wl_surface_damage(surface, 0, 0, img->width, img->height);
        wl_surface_commit(surface);
    }

    *hsx = img->hotspot_x;
    *hsy = img->hotspot_y;
    return surface;
}
