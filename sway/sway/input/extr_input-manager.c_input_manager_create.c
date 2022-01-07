
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sway_server {int wl_display; TYPE_2__* backend; } ;
struct TYPE_14__ {int notify; } ;
struct sway_input_manager {TYPE_7__ inhibit_deactivate; TYPE_6__* inhibit; TYPE_7__ inhibit_activate; TYPE_7__ virtual_keyboard_new; TYPE_5__* virtual_keyboard; TYPE_7__ new_input; int seats; int devices; } ;
struct TYPE_11__ {int deactivate; int activate; } ;
struct TYPE_13__ {TYPE_4__ events; } ;
struct TYPE_10__ {int new_virtual_keyboard; } ;
struct TYPE_12__ {TYPE_3__ events; } ;
struct TYPE_8__ {int new_input; } ;
struct TYPE_9__ {TYPE_1__ events; } ;


 struct sway_input_manager* calloc (int,int) ;
 int handle_inhibit_activate ;
 int handle_inhibit_deactivate ;
 int handle_new_input ;
 int handle_virtual_keyboard ;
 int wl_list_init (int *) ;
 int wl_signal_add (int *,TYPE_7__*) ;
 TYPE_6__* wlr_input_inhibit_manager_create (int ) ;
 TYPE_5__* wlr_virtual_keyboard_manager_v1_create (int ) ;

struct sway_input_manager *input_manager_create(struct sway_server *server) {
 struct sway_input_manager *input =
  calloc(1, sizeof(struct sway_input_manager));
 if (!input) {
  return ((void*)0);
 }

 wl_list_init(&input->devices);
 wl_list_init(&input->seats);

 input->new_input.notify = handle_new_input;
 wl_signal_add(&server->backend->events.new_input, &input->new_input);

 input->virtual_keyboard = wlr_virtual_keyboard_manager_v1_create(
  server->wl_display);
 wl_signal_add(&input->virtual_keyboard->events.new_virtual_keyboard,
  &input->virtual_keyboard_new);
 input->virtual_keyboard_new.notify = handle_virtual_keyboard;

 input->inhibit = wlr_input_inhibit_manager_create(server->wl_display);
 input->inhibit_activate.notify = handle_inhibit_activate;
 wl_signal_add(&input->inhibit->events.activate,
   &input->inhibit_activate);
 input->inhibit_deactivate.notify = handle_inhibit_deactivate;
 wl_signal_add(&input->inhibit->events.deactivate,
   &input->inhibit_deactivate);

 return input;
}
