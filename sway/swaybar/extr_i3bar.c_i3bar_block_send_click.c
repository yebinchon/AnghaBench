
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct status_line {int clicked; int write_fd; int click_events; } ;
struct json_object {int dummy; } ;
struct i3bar_block {scalar_t__ instance; scalar_t__ name; } ;
typedef enum hotspot_event_handling { ____Placeholder_hotspot_event_handling } hotspot_event_handling ;


 int HOTSPOT_IGNORE ;
 int HOTSPOT_PROCESS ;
 int SWAY_DEBUG ;
 scalar_t__ dprintf (int ,char*,char*,int ) ;
 int event_to_x11_button (int) ;
 int json_object_new_int (int) ;
 struct json_object* json_object_new_object () ;
 int json_object_new_string (scalar_t__) ;
 int json_object_object_add (struct json_object*,char*,int ) ;
 int json_object_put (struct json_object*) ;
 int json_object_to_json_string (struct json_object*) ;
 int status_error (struct status_line*,char*) ;
 int sway_log (int ,char*,scalar_t__) ;

enum hotspot_event_handling i3bar_block_send_click(struct status_line *status,
  struct i3bar_block *block, int x, int y, int rx, int ry, int w, int h,
  uint32_t button) {
 sway_log(SWAY_DEBUG, "block %s clicked", block->name);
 if (!block->name || !status->click_events) {
  return HOTSPOT_PROCESS;
 }

 struct json_object *event_json = json_object_new_object();
 json_object_object_add(event_json, "name",
   json_object_new_string(block->name));
 if (block->instance) {
  json_object_object_add(event_json, "instance",
    json_object_new_string(block->instance));
 }

 json_object_object_add(event_json, "button",
   json_object_new_int(event_to_x11_button(button)));
 json_object_object_add(event_json, "event", json_object_new_int(button));
 json_object_object_add(event_json, "x", json_object_new_int(x));
 json_object_object_add(event_json, "y", json_object_new_int(y));
 json_object_object_add(event_json, "relative_x", json_object_new_int(rx));
 json_object_object_add(event_json, "relative_y", json_object_new_int(ry));
 json_object_object_add(event_json, "width", json_object_new_int(w));
 json_object_object_add(event_json, "height", json_object_new_int(h));
 if (dprintf(status->write_fd, "%s%s\n", status->clicked ? "," : "",
    json_object_to_json_string(event_json)) < 0) {
  status_error(status, "[failed to write click event]");
 }
 status->clicked = 1;
 json_object_put(event_json);
 return HOTSPOT_IGNORE;
}
