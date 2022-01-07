
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_seat {int dummy; } ;
struct seat_data {int owner; } ;


 int msg_Dbg (int ,char*,char const*) ;

__attribute__((used)) static void seat_name_cb(void *data, struct wl_seat *seat, const char *name)
{
    struct seat_data *sd = data;

    msg_Dbg(sd->owner, "seat name: %s", name);
    (void) seat;
}
