
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_output {int dummy; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;


 int L_NONE ;
 int get_layout_toggle (int,char**,int,int,struct sway_output*) ;
 int parse_layout_string (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static enum sway_container_layout get_layout(int argc, char **argv,
  enum sway_container_layout layout,
  enum sway_container_layout prev_split_layout,
  struct sway_output *output) {

 enum sway_container_layout parsed = parse_layout_string(argv[0]);
 if (parsed != L_NONE) {
  return parsed;
 }

 if (strcasecmp(argv[0], "default") == 0) {
  return prev_split_layout;
 }

 if (strcasecmp(argv[0], "toggle") == 0) {
  return get_layout_toggle(argc, argv, layout, prev_split_layout, output);
 }

 return L_NONE;
}
