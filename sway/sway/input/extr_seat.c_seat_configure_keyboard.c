
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_seat_device {TYPE_2__* input_device; int keyboard; } ;
struct sway_seat {int wlr_seat; } ;
struct sway_node {TYPE_1__* sway_container; } ;
struct TYPE_6__ {int surface; } ;
struct TYPE_5__ {int wlr_device; } ;
struct TYPE_4__ {TYPE_3__* view; } ;


 scalar_t__ node_is_view (struct sway_node*) ;
 struct sway_node* seat_get_focus (struct sway_seat*) ;
 int seat_keyboard_notify_enter (struct sway_seat*,int ) ;
 int sway_keyboard_configure (int ) ;
 int sway_keyboard_create (struct sway_seat*,struct sway_seat_device*) ;
 int wlr_seat_keyboard_clear_focus (int ) ;
 int wlr_seat_set_keyboard (int ,int ) ;

__attribute__((used)) static void seat_configure_keyboard(struct sway_seat *seat,
  struct sway_seat_device *seat_device) {
 if (!seat_device->keyboard) {
  sway_keyboard_create(seat, seat_device);
 }
 sway_keyboard_configure(seat_device->keyboard);
 wlr_seat_set_keyboard(seat->wlr_seat,
   seat_device->input_device->wlr_device);
 struct sway_node *focus = seat_get_focus(seat);
 if (focus && node_is_view(focus)) {

  wlr_seat_keyboard_clear_focus(seat->wlr_seat);
  seat_keyboard_notify_enter(seat, focus->sway_container->view->surface);
 }
}
