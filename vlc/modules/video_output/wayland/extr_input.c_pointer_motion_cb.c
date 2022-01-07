
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct seat_data {int owner; } ;


 int pointer_show (struct seat_data*,struct wl_pointer*) ;
 int vout_window_ReportMouseMoved (int ,int ,int ) ;
 int wl_fixed_to_int (int ) ;

__attribute__((used)) static void pointer_motion_cb(void *data, struct wl_pointer *pointer,
                              uint32_t time, wl_fixed_t sx, wl_fixed_t sy)
{
    struct seat_data *sd = data;

    pointer_show(sd, pointer);
    vout_window_ReportMouseMoved(sd->owner,
                                 wl_fixed_to_int(sx), wl_fixed_to_int(sy));
    (void) time;
}
