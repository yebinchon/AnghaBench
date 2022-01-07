
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_seat_device {TYPE_2__* input_device; } ;
struct sway_seat {TYPE_1__* cursor; } ;
struct TYPE_4__ {int wlr_device; int identifier; } ;
struct TYPE_3__ {int cursor; } ;


 int SWAY_DEBUG ;
 int sway_log (int ,char*,int ) ;
 int wlr_cursor_map_input_to_output (int ,int ,int *) ;

__attribute__((used)) static void seat_reset_input_config(struct sway_seat *seat,
  struct sway_seat_device *sway_device) {
 sway_log(SWAY_DEBUG, "Resetting output mapping for input device %s",
  sway_device->input_device->identifier);
 wlr_cursor_map_input_to_output(seat->cursor->cursor,
  sway_device->input_device->wlr_device, ((void*)0));
}
