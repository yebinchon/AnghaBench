
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_view {int xdg_decoration; } ;
struct sway_container {int border_thickness; struct sway_view* view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int B_CSD ;
 int B_NONE ;
 int B_NORMAL ;
 int B_PIXEL ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int arrange_container (struct sway_container*) ;
 int atoi (char*) ;
 int border_toggle (struct sway_container*) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 int container_set_geometry_from_content (struct sway_container*) ;
 int set_border (struct sway_container*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *cmd_border(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "border", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 struct sway_container *container = config->handler_context.container;
 if (!container || !container->view) {
  return cmd_results_new(CMD_INVALID, "Only views can have borders");
 }
 struct sway_view *view = container->view;

 if (strcmp(argv[0], "none") == 0) {
  set_border(container, B_NONE);
 } else if (strcmp(argv[0], "normal") == 0) {
  set_border(container, B_NORMAL);
 } else if (strcmp(argv[0], "pixel") == 0) {
  set_border(container, B_PIXEL);
 } else if (strcmp(argv[0], "csd") == 0) {
  if (!view->xdg_decoration) {
   return cmd_results_new(CMD_INVALID,
     "This window doesn't support client side decorations");
  }
  set_border(container, B_CSD);
 } else if (strcmp(argv[0], "toggle") == 0) {
  border_toggle(container);
 } else {
  return cmd_results_new(CMD_INVALID,
    "Expected 'border <none|normal|pixel|csd|toggle>' "
    "or 'border pixel <px>'");
 }
 if (argc == 2) {
  container->border_thickness = atoi(argv[1]);
 }

 if (container_is_floating(container)) {
  container_set_geometry_from_content(container);
 }

 arrange_container(container);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
