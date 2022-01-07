
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar {int visible_by_mode; int visible_by_urgency; int visible_by_modifier; int id; } ;
typedef int json_object ;


 int determine_bar_visibility (struct swaybar*,int) ;
 int json_object_get_boolean (int *) ;
 char* json_object_get_string (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static bool handle_bar_state_update(struct swaybar *bar, json_object *event) {
 json_object *json_id;
 json_object_object_get_ex(event, "id", &json_id);
 const char *id = json_object_get_string(json_id);
 if (strcmp(id, bar->id) != 0) {
  return 0;
 }

 json_object *visible_by_modifier;
 json_object_object_get_ex(event, "visible_by_modifier", &visible_by_modifier);
 bar->visible_by_modifier = json_object_get_boolean(visible_by_modifier);
 if (bar->visible_by_modifier) {



  bar->visible_by_mode = 0;
  bar->visible_by_urgency = 0;
 }
 return determine_bar_visibility(bar, 0);
}
