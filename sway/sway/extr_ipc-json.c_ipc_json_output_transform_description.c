
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wl_output_transform { ____Placeholder_wl_output_transform } wl_output_transform ;
__attribute__((used)) static const char *ipc_json_output_transform_description(enum wl_output_transform transform) {
 switch (transform) {
 case 128:
  return "normal";
 case 133:
  return "90";
 case 135:
  return "180";
 case 134:
  return "270";
 case 132:
  return "flipped";
 case 129:
  return "flipped-90";
 case 131:
  return "flipped-180";
 case 130:
  return "flipped-270";
 }
 return ((void*)0);
}
