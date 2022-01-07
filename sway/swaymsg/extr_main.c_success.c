
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 int * json_object_array_get_idx (int *,size_t) ;
 size_t json_object_array_length (int *) ;
 scalar_t__ json_object_is_type (int *,int ) ;
 int json_type_array ;
 int json_type_object ;
 int success_object (int *) ;

__attribute__((used)) static bool success(json_object *r, bool fallback) {
 if (!json_object_is_type(r, json_type_array)) {
  if (json_object_is_type(r, json_type_object)) {
   return success_object(r);
  }
  return fallback;
 }

 size_t results_len = json_object_array_length(r);
 if (!results_len) {
  return fallback;
 }

 for (size_t i = 0; i < results_len; ++i) {
  json_object *result = json_object_array_get_idx(r, i);

  if (!success_object(result)) {
   return 0;
  }
 }

 return 1;
}
