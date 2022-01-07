
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int dummy; } ;
typedef int json_object ;


 int B_NONE ;
 int L_HORIZ ;
 char* ipc_json_border_description (int ) ;
 int * ipc_json_create_empty_rect () ;
 int * ipc_json_create_rect (struct wlr_box*) ;
 char* ipc_json_layout_description (int ) ;
 char* ipc_json_orientation_description (int ) ;
 int * json_object_new_array () ;
 int * json_object_new_boolean (int) ;
 int * json_object_new_int (int) ;
 int * json_object_new_object () ;
 int * json_object_new_string (char*) ;
 int json_object_object_add (int *,char*,int *) ;

__attribute__((used)) static json_object *ipc_json_create_node(int id, char *name,
  bool focused, json_object *focus, struct wlr_box *box) {
 json_object *object = json_object_new_object();

 json_object_object_add(object, "id", json_object_new_int(id));
 json_object_object_add(object, "name",
   name ? json_object_new_string(name) : ((void*)0));
 json_object_object_add(object, "rect", ipc_json_create_rect(box));
 json_object_object_add(object, "focused", json_object_new_boolean(focused));
 json_object_object_add(object, "focus", focus);


 json_object_object_add(object, "border",
   json_object_new_string(
    ipc_json_border_description(B_NONE)));
 json_object_object_add(object, "current_border_width",
   json_object_new_int(0));
 json_object_object_add(object, "layout",
   json_object_new_string(
    ipc_json_layout_description(L_HORIZ)));
 json_object_object_add(object, "orientation",
   json_object_new_string(
    ipc_json_orientation_description(L_HORIZ)));
 json_object_object_add(object, "percent", ((void*)0));
 json_object_object_add(object, "window_rect", ipc_json_create_empty_rect());
 json_object_object_add(object, "deco_rect", ipc_json_create_empty_rect());
 json_object_object_add(object, "geometry", ipc_json_create_empty_rect());
 json_object_object_add(object, "window", ((void*)0));
 json_object_object_add(object, "urgent", json_object_new_boolean(0));
 json_object_object_add(object, "floating_nodes", json_object_new_array());
 json_object_object_add(object, "sticky", json_object_new_boolean(0));

 return object;
}
