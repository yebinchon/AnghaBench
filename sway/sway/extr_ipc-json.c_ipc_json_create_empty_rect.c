
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int member_3; int member_2; int member_1; int member_0; } ;
typedef int json_object ;


 int * ipc_json_create_rect (struct wlr_box*) ;

__attribute__((used)) static json_object *ipc_json_create_empty_rect(void) {
 struct wlr_box empty = {0, 0, 0, 0};

 return ipc_json_create_rect(&empty);
}
