
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_event_pointer_axis {float delta; float delta_discrete; int source; int orientation; int time_msec; TYPE_1__* device; } ;
struct sway_seat {int wlr_seat; } ;
struct sway_input_device {int dummy; } ;
struct input_config {float scroll_factor; } ;
struct TYPE_2__ {struct sway_input_device* data; } ;


 float FLT_MIN ;
 struct input_config* input_device_get_config (struct sway_input_device*) ;
 int round (float) ;
 int wlr_seat_pointer_notify_axis (int ,int ,int ,float,int ,int ) ;

__attribute__((used)) static void handle_axis(struct sway_seat *seat,
  struct wlr_event_pointer_axis *event) {
 struct sway_input_device *input_device =
  event->device ? event->device->data : ((void*)0);
 struct input_config *ic =
  input_device ? input_device_get_config(input_device) : ((void*)0);
 float scroll_factor =
  (ic == ((void*)0) || ic->scroll_factor == FLT_MIN) ? 1.0f : ic->scroll_factor;

 wlr_seat_pointer_notify_axis(seat->wlr_seat, event->time_msec,
  event->orientation, scroll_factor * event->delta,
  round(scroll_factor * event->delta_discrete), event->source);
}
