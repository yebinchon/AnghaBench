
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;





__attribute__((used)) static const char *ipc_json_orientation_description(enum sway_container_layout l) {
 switch (l) {
 case 128:
  return "vertical";
 case 129:
  return "horizontal";
 default:
  return "none";
 }
}
