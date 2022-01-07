
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 char* json_object_get_string (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 int printf (char*,...) ;
 int success_object (int *) ;

__attribute__((used)) static void pretty_print_cmd(json_object *r) {
 if (!success_object(r)) {
  json_object *error;
  if (!json_object_object_get_ex(r, "error", &error)) {
   printf("An unknkown error occurred");
  } else {
   printf("Error: %s\n", json_object_get_string(error));
  }
 }
}
