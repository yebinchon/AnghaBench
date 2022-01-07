
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct seat_data {scalar_t__ cursor_timeout; scalar_t__ cursor_deadline; int cursor_serial; int owner; } ;


 scalar_t__ vlc_tick_now () ;
 struct wl_surface* window_get_cursor (int ,int*,int*) ;
 int wl_pointer_set_cursor (struct wl_pointer*,int ,struct wl_surface*,int,int) ;

__attribute__((used)) static void pointer_show(struct seat_data *sd, struct wl_pointer *pointer)
{
    int hsx, hsy;
    struct wl_surface *surface = window_get_cursor(sd->owner, &hsx, &hsy);

    if (surface != ((void*)0))
    {
        wl_pointer_set_cursor(pointer, sd->cursor_serial, surface, hsx, hsy);
        sd->cursor_deadline = vlc_tick_now() + sd->cursor_timeout;
    }
}
