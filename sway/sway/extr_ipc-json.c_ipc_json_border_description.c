
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sway_container_border { ____Placeholder_sway_container_border } sway_container_border ;







__attribute__((used)) static const char *ipc_json_border_description(enum sway_container_border border) {
 switch (border) {
 case 130:
  return "none";
 case 128:
  return "pixel";
 case 129:
  return "normal";
 case 131:
  return "csd";
 }
 return "unknown";
}
