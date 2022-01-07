
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* marks; } ;
typedef int json_object ;
struct TYPE_2__ {int length; scalar_t__* items; } ;


 int json_object_array_add (int *,int ) ;
 int json_object_new_string (char*) ;

__attribute__((used)) static void ipc_get_marks_callback(struct sway_container *con, void *data) {
 json_object *marks = (json_object *)data;
 for (int i = 0; i < con->marks->length; ++i) {
  char *mark = (char *)con->marks->items[i];
  json_object_array_add(marks, json_object_new_string(mark));
 }
}
