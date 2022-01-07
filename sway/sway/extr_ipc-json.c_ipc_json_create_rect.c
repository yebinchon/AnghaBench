
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int height; int width; int y; int x; } ;
typedef int json_object ;


 int json_object_new_int (int ) ;
 int * json_object_new_object () ;
 int json_object_object_add (int *,char*,int ) ;

__attribute__((used)) static json_object *ipc_json_create_rect(struct wlr_box *box) {
 json_object *rect = json_object_new_object();

 json_object_object_add(rect, "x", json_object_new_int(box->x));
 json_object_object_add(rect, "y", json_object_new_int(box->y));
 json_object_object_add(rect, "width", json_object_new_int(box->width));
 json_object_object_add(rect, "height", json_object_new_int(box->height));

 return rect;
}
