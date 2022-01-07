
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sway_node_type { ____Placeholder_sway_node_type } sway_node_type ;







const char *node_type_to_str(enum sway_node_type type) {
 switch (type) {
 case 129:
  return "N_ROOT";
 case 130:
  return "N_OUTPUT";
 case 128:
  return "N_WORKSPACE";
 case 131:
  return "N_CONTAINER";
 }
 return "";
}
