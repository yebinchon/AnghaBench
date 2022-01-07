
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_seat_device {int link; TYPE_3__* input_device; TYPE_2__* sway_seat; int tablet_pad; int tablet; int keyboard; } ;
struct TYPE_6__ {int wlr_device; } ;
struct TYPE_5__ {TYPE_1__* cursor; } ;
struct TYPE_4__ {int cursor; } ;


 int free (struct sway_seat_device*) ;
 int sway_keyboard_destroy (int ) ;
 int sway_tablet_destroy (int ) ;
 int sway_tablet_pad_destroy (int ) ;
 int wl_list_remove (int *) ;
 int wlr_cursor_detach_input_device (int ,int ) ;

__attribute__((used)) static void seat_device_destroy(struct sway_seat_device *seat_device) {
 if (!seat_device) {
  return;
 }

 sway_keyboard_destroy(seat_device->keyboard);
 sway_tablet_destroy(seat_device->tablet);
 sway_tablet_pad_destroy(seat_device->tablet_pad);
 wlr_cursor_detach_input_device(seat_device->sway_seat->cursor->cursor,
  seat_device->input_device->wlr_device);
 wl_list_remove(&seat_device->link);
 free(seat_device);
}
