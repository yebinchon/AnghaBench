
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_root {int dummy; } ;
typedef int json_object ;


 int json_object_new_string (char*) ;
 int json_object_object_add (int *,char*,int ) ;

__attribute__((used)) static void ipc_json_describe_root(struct sway_root *root, json_object *object) {
 json_object_object_add(object, "type", json_object_new_string("root"));
}
