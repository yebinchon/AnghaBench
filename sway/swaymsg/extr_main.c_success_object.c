
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 int json_object_get_boolean (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;

__attribute__((used)) static bool success_object(json_object *result) {
 json_object *success;

 if (!json_object_object_get_ex(result, "success", &success)) {
  return 1;
 }

 return json_object_get_boolean(success);
}
