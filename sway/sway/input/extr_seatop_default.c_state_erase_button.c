
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct seatop_default_event {size_t pressed_button_count; scalar_t__* pressed_buttons; } ;



__attribute__((used)) static void state_erase_button(struct seatop_default_event *e,
  uint32_t button) {
 size_t j = 0;
 for (size_t i = 0; i < e->pressed_button_count; ++i) {
  if (i > j) {
   e->pressed_buttons[j] = e->pressed_buttons[i];
  }
  if (e->pressed_buttons[i] != button) {
   ++j;
  }
 }
 while (e->pressed_button_count > j) {
  --e->pressed_button_count;
  e->pressed_buttons[e->pressed_button_count] = 0;
 }
}
