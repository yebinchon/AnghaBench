
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct wlr_box {int member_3; int member_2; int member_1; scalar_t__ member_0; } ;
struct TYPE_10__ {int border_thickness; int border; } ;
struct sway_container {char const* title; TYPE_3__* view; int content_height; int content_width; TYPE_1__ current; scalar_t__ x; scalar_t__ content_x; TYPE_2__* marks; } ;
struct TYPE_11__ {int length; char const** items; } ;
typedef TYPE_2__ list_t ;
typedef int json_object ;
struct TYPE_12__ {scalar_t__ type; int natural_height; int natural_width; scalar_t__ pid; } ;


 int B_PIXEL ;
 scalar_t__ SWAY_VIEW_XWAYLAND ;
 int * ipc_json_create_rect (struct wlr_box*) ;
 int json_object_array_add (int *,int *) ;
 int * json_object_new_array () ;
 int * json_object_new_boolean (int) ;
 int * json_object_new_int (scalar_t__) ;
 int * json_object_new_object () ;
 int * json_object_new_string (char const*) ;
 int json_object_object_add (int *,char*,int *) ;
 char* view_get_app_id (TYPE_3__*) ;
 char* view_get_class (TYPE_3__*) ;
 char* view_get_instance (TYPE_3__*) ;
 char* view_get_window_role (TYPE_3__*) ;
 scalar_t__ view_get_x11_parent_id (TYPE_3__*) ;
 scalar_t__ view_get_x11_window_id (TYPE_3__*) ;
 int view_is_visible (TYPE_3__*) ;

__attribute__((used)) static void ipc_json_describe_view(struct sway_container *c, json_object *object) {
 json_object_object_add(object, "pid", json_object_new_int(c->view->pid));

 const char *app_id = view_get_app_id(c->view);
 json_object_object_add(object, "app_id",
   app_id ? json_object_new_string(app_id) : ((void*)0));

 bool visible = view_is_visible(c->view);
 json_object_object_add(object, "visible", json_object_new_boolean(visible));

 json_object *marks = json_object_new_array();
 list_t *con_marks = c->marks;
 for (int i = 0; i < con_marks->length; ++i) {
  json_object_array_add(marks, json_object_new_string(con_marks->items[i]));
 }

 json_object_object_add(object, "marks", marks);

 struct wlr_box window_box = {
  c->content_x - c->x,
  (c->current.border == B_PIXEL) ? c->current.border_thickness : 0,
  c->content_width,
  c->content_height
 };

 json_object_object_add(object, "window_rect", ipc_json_create_rect(&window_box));

 struct wlr_box geometry = {0, 0, c->view->natural_width, c->view->natural_height};
 json_object_object_add(object, "geometry", ipc_json_create_rect(&geometry));
}
