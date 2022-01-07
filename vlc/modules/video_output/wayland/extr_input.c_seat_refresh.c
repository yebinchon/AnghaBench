
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;
struct seat_data {scalar_t__ cursor_deadline; int cursor_serial; int * pointer; } ;


 scalar_t__ INT64_MAX ;
 int wl_pointer_set_cursor (int *,int ,int *,int ,int ) ;

__attribute__((used)) static void seat_refresh(struct seat_data *sd, vlc_tick_t now)
{
    if (sd->pointer != ((void*)0) && sd->cursor_deadline <= now)
    {
        wl_pointer_set_cursor(sd->pointer, sd->cursor_serial, ((void*)0), 0, 0);
        sd->cursor_deadline = INT64_MAX;
    }
}
