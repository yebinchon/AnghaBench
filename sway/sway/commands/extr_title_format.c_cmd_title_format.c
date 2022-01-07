
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_view {char* title_format; } ;
struct sway_container {struct sway_view* view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 int config_update_font_height (int) ;
 int free (char*) ;
 char* join_args (char**,int) ;
 int view_update_title (struct sway_view*,int) ;

struct cmd_results *cmd_title_format(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "title_format", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct sway_container *container = config->handler_context.container;
 if (!container || !container->view) {
  return cmd_results_new(CMD_INVALID,
    "Only views can have a title_format");
 }
 struct sway_view *view = container->view;
 char *format = join_args(argv, argc);
 if (view->title_format) {
  free(view->title_format);
 }
 view->title_format = format;
 view_update_title(view, 1);
 config_update_font_height(1);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
