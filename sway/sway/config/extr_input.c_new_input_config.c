
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_config {int xkb_file_is_set; void* xkb_capslock; void* xkb_numlock; void* repeat_rate; void* repeat_delay; void* left_handed; void* scroll_method; void* scroll_button; void* scroll_factor; void* pointer_accel; void* accel_profile; void* natural_scroll; void* middle_emulation; void* click_method; void* send_events; void* dwt; void* drag_lock; void* drag; void* tap_button_map; void* tap; int * input_type; int identifier; } ;


 void* FLT_MIN ;
 void* INT_MIN ;
 int SWAY_DEBUG ;
 struct input_config* calloc (int,int) ;
 int free (struct input_config*) ;
 int strdup (char const*) ;
 int sway_log (int ,char*,...) ;

struct input_config *new_input_config(const char* identifier) {
 struct input_config *input = calloc(1, sizeof(struct input_config));
 if (!input) {
  sway_log(SWAY_DEBUG, "Unable to allocate input config");
  return ((void*)0);
 }
 sway_log(SWAY_DEBUG, "new_input_config(%s)", identifier);
 if (!(input->identifier = strdup(identifier))) {
  free(input);
  sway_log(SWAY_DEBUG, "Unable to allocate input config");
  return ((void*)0);
 }

 input->input_type = ((void*)0);
 input->tap = INT_MIN;
 input->tap_button_map = INT_MIN;
 input->drag = INT_MIN;
 input->drag_lock = INT_MIN;
 input->dwt = INT_MIN;
 input->send_events = INT_MIN;
 input->click_method = INT_MIN;
 input->middle_emulation = INT_MIN;
 input->natural_scroll = INT_MIN;
 input->accel_profile = INT_MIN;
 input->pointer_accel = FLT_MIN;
 input->scroll_factor = FLT_MIN;
 input->scroll_button = INT_MIN;
 input->scroll_method = INT_MIN;
 input->left_handed = INT_MIN;
 input->repeat_delay = INT_MIN;
 input->repeat_rate = INT_MIN;
 input->xkb_numlock = INT_MIN;
 input->xkb_capslock = INT_MIN;
 input->xkb_file_is_set = 0;

 return input;
}
