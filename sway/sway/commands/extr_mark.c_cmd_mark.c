
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {scalar_t__ view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int container_add_mark (struct sway_container*,char*) ;
 int container_clear_marks (struct sway_container*) ;
 int container_find_and_unmark (char*) ;
 int container_has_mark (struct sway_container*,char*) ;
 int container_update_marks_textures (struct sway_container*) ;
 int free (char*) ;
 char* join_args (char**,int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int view_execute_criteria (scalar_t__) ;

struct cmd_results *cmd_mark(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "mark", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 struct sway_container *container = config->handler_context.container;
 if (!container) {
  return cmd_results_new(CMD_INVALID, "Only containers can have marks");
 }

 bool add = 0, toggle = 0;
 while (argc > 0 && strncmp(*argv, "--", 2) == 0) {
  if (strcmp(*argv, "--add") == 0) {
   add = 1;
  } else if (strcmp(*argv, "--replace") == 0) {
   add = 0;
  } else if (strcmp(*argv, "--toggle") == 0) {
   toggle = 1;
  } else {
   return cmd_results_new(CMD_INVALID,
     "Unrecognized argument '%s'", *argv);
  }
  ++argv;
  --argc;
 }

 if (!argc) {
  return cmd_results_new(CMD_INVALID,
    "Expected '[--add|--replace] [--toggle] <identifier>'");
 }

 char *mark = join_args(argv, argc);
 bool had_mark = container_has_mark(container, mark);

 if (!add) {

  container_clear_marks(container);
 }

 container_find_and_unmark(mark);

 if (!toggle || !had_mark) {
  container_add_mark(container, mark);
 }

 free(mark);
 container_update_marks_textures(container);
 if (container->view) {
  view_execute_criteria(container->view);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
