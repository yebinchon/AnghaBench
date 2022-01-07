
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;



 int IPC_GET_CONFIG ;



 int IPC_GET_VERSION ;

 int IPC_SEND_TICK ;
 int JSON_C_TO_STRING_PRETTY ;
 int JSON_C_TO_STRING_SPACED ;
 int * json_object_array_get_idx (int *,size_t) ;
 size_t json_object_array_length (int *) ;
 char* json_object_to_json_string_ext (int *,int) ;
 int pretty_print_cmd (int *) ;
 int pretty_print_config (int *) ;
 int pretty_print_input (int *) ;
 int pretty_print_output (int *) ;
 int pretty_print_seat (int *) ;
 int pretty_print_version (int *) ;
 int pretty_print_workspace (int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static void pretty_print(int type, json_object *resp) {
 if (type != 132 && type != 128 &&
   type != 131 && type != 130 &&
   type != IPC_GET_VERSION && type != 129 &&
   type != IPC_GET_CONFIG && type != IPC_SEND_TICK) {
  printf("%s\n", json_object_to_json_string_ext(resp,
   JSON_C_TO_STRING_PRETTY | JSON_C_TO_STRING_SPACED));
  return;
 }

 if (type == IPC_SEND_TICK) {
  return;
 }

 if (type == IPC_GET_VERSION) {
  pretty_print_version(resp);
  return;
 }

 if (type == IPC_GET_CONFIG) {
  pretty_print_config(resp);
  return;
 }

 json_object *obj;
 size_t len = json_object_array_length(resp);
 for (size_t i = 0; i < len; ++i) {
  obj = json_object_array_get_idx(resp, i);
  switch (type) {
  case 132:
   pretty_print_cmd(obj);
   break;
  case 128:
   pretty_print_workspace(obj);
   break;
  case 131:
   pretty_print_input(obj);
   break;
  case 130:
   pretty_print_output(obj);
   break;
  case 129:
   pretty_print_seat(obj);
   break;
  }
 }
}
