
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_keyboard {int key_repeat_source; int * repeat_binding; } ;


 int SWAY_DEBUG ;
 int sway_log (int ,char*) ;
 scalar_t__ wl_event_source_timer_update (int ,int ) ;

void sway_keyboard_disarm_key_repeat(struct sway_keyboard *keyboard) {
 if (!keyboard) {
  return;
 }
 keyboard->repeat_binding = ((void*)0);
 if (wl_event_source_timer_update(keyboard->key_repeat_source, 0) < 0) {
  sway_log(SWAY_DEBUG, "failed to disarm key repeat timer");
 }
}
