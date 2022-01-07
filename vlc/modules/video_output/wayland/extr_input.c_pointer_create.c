
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_data {int cursor_deadline; int owner; int cursor_timeout; int * pointer; int seat; } ;


 int INT64_MAX ;
 int VLC_TICK_FROM_MS (int ) ;
 scalar_t__ likely (int ) ;
 int pointer_cbs ;
 int var_InheritInteger (int ,char*) ;
 int wl_pointer_add_listener (int *,int *,struct seat_data*) ;
 int * wl_seat_get_pointer (int ) ;

__attribute__((used)) static void pointer_create(struct seat_data *sd)
{
    if (sd->pointer != ((void*)0))
        return;

    sd->pointer = wl_seat_get_pointer(sd->seat);
    if (likely(sd->pointer != ((void*)0)))
        wl_pointer_add_listener(sd->pointer, &pointer_cbs, sd);

    sd->cursor_timeout = VLC_TICK_FROM_MS( var_InheritInteger(sd->owner, "mouse-hide-timeout") );
    sd->cursor_deadline = INT64_MAX;
}
