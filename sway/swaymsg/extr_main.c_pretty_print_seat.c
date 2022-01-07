
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 int * json_object_array_get_idx (int *,size_t) ;
 size_t json_object_array_length (int *) ;
 int json_object_get_int (int *) ;
 char* json_object_get_string (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 int printf (char const*,...) ;

__attribute__((used)) static void pretty_print_seat(json_object *i) {
 json_object *name, *capabilities, *devices;
 json_object_object_get_ex(i, "name", &name);
 json_object_object_get_ex(i, "capabilities", &capabilities);
 json_object_object_get_ex(i, "devices", &devices);

 const char *fmt =
  "Seat: %s\n"
  "  Capabilities: %d\n";

 printf(fmt, json_object_get_string(name),
  json_object_get_int(capabilities));

 size_t devices_len = json_object_array_length(devices);
 if (devices_len > 0) {
  printf("  Devices:\n");
  for (size_t i = 0; i < devices_len; ++i) {
   json_object *device = json_object_array_get_idx(devices, i);

   json_object *device_name;
   json_object_object_get_ex(device, "name", &device_name);

   printf("    %s\n", json_object_get_string(device_name));
  }
 }

 printf("\n");
}
