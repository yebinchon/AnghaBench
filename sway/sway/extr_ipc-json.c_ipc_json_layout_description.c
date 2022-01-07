
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
__attribute__((used)) static const char *ipc_json_layout_description(enum sway_container_layout l) {
 switch (l) {
 case 128:
  return "splitv";
 case 132:
  return "splith";
 case 129:
  return "tabbed";
 case 130:
  return "stacked";
 case 131:
  break;
 }
 return "none";
}
