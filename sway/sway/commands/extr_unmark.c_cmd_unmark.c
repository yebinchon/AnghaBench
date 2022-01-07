
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; scalar_t__ using_criteria; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_SUCCESS ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_2__* config ;
 int container_clear_marks (struct sway_container*) ;
 int container_find_and_unmark (char*) ;
 scalar_t__ container_has_mark (struct sway_container*,char*) ;
 int container_update_marks_textures (struct sway_container*) ;
 int free (char*) ;
 char* join_args (char**,int) ;
 int remove_all_marks_iterator ;
 int root_for_each_container (int ,int *) ;

struct cmd_results *cmd_unmark(int argc, char **argv) {

 struct sway_container *con = ((void*)0);
 if (config->handler_context.using_criteria) {
  con = config->handler_context.container;
 }


 char *mark = ((void*)0);
 if (argc > 0) {
  mark = join_args(argv, argc);
 }

 if (con && mark) {

  if (container_has_mark(con, mark)) {
   container_find_and_unmark(mark);
  }
 } else if (con && !mark) {

  container_clear_marks(con);
  container_update_marks_textures(con);
 } else if (!con && mark) {

  container_find_and_unmark(mark);
 } else {

  root_for_each_container(remove_all_marks_iterator, ((void*)0));
 }
 free(mark);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
