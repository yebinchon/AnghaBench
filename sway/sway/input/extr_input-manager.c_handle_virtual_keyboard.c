
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int destroy; } ;
struct wlr_input_device {TYPE_1__ events; struct sway_input_device* data; } ;
struct wlr_virtual_keyboard_v1 {struct wlr_input_device input_device; } ;
struct wl_listener {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_input_manager {int devices; } ;
struct TYPE_4__ {int notify; } ;
struct sway_input_device {TYPE_2__ device_destroy; int identifier; int link; struct wlr_input_device* wlr_device; } ;


 int SWAY_DEBUG ;
 struct sway_input_device* calloc (int,int) ;
 int handle_device_destroy ;
 int input_device_get_identifier (struct wlr_input_device*) ;
 struct sway_input_manager* input_manager ;
 struct sway_seat* input_manager_get_default_seat () ;
 int seat_add_device (struct sway_seat*,struct sway_input_device*) ;
 int sway_assert (struct sway_input_device*,char*) ;
 int sway_log (int ,char*,int ) ;
 int virtual_keyboard_new ;
 struct sway_input_manager* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_2__*) ;

void handle_virtual_keyboard(struct wl_listener *listener, void *data) {
 struct sway_input_manager *input_manager =
  wl_container_of(listener, input_manager, virtual_keyboard_new);
 struct wlr_virtual_keyboard_v1 *keyboard = data;
 struct wlr_input_device *device = &keyboard->input_device;

 struct sway_seat *seat = input_manager_get_default_seat();


 struct sway_input_device *input_device =
  calloc(1, sizeof(struct sway_input_device));
 if (!sway_assert(input_device, "could not allocate input device")) {
  return;
 }
 device->data = input_device;

 input_device->wlr_device = device;
 input_device->identifier = input_device_get_identifier(device);
 wl_list_insert(&input_manager->devices, &input_device->link);

 sway_log(SWAY_DEBUG, "adding virtual keyboard: '%s'",
  input_device->identifier);

 wl_signal_add(&device->events.destroy, &input_device->device_destroy);
 input_device->device_destroy.notify = handle_device_destroy;

 seat_add_device(seat, input_device);
}
