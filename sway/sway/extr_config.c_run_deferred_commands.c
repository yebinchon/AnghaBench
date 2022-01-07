
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cmd_results {scalar_t__ status; int error; } ;
struct TYPE_6__ {int length; struct cmd_results** items; } ;
typedef TYPE_1__ list_t ;
struct TYPE_8__ {TYPE_3__* cmd_queue; } ;
struct TYPE_7__ {char** items; scalar_t__ length; } ;


 scalar_t__ CMD_SUCCESS ;
 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 TYPE_5__* config ;
 TYPE_1__* execute_command (char*,int *,int *) ;
 int free (char*) ;
 int free_cmd_results (struct cmd_results*) ;
 int list_del (TYPE_3__*,int ) ;
 int list_free (TYPE_1__*) ;
 int sway_log (int ,char*,...) ;

void run_deferred_commands(void) {
 if (!config->cmd_queue->length) {
  return;
 }
 sway_log(SWAY_DEBUG, "Running deferred commands");
 while (config->cmd_queue->length) {
  char *line = config->cmd_queue->items[0];
  list_t *res_list = execute_command(line, ((void*)0), ((void*)0));
  for (int i = 0; i < res_list->length; ++i) {
   struct cmd_results *res = res_list->items[i];
   if (res->status != CMD_SUCCESS) {
    sway_log(SWAY_ERROR, "Error on line '%s': %s",
      line, res->error);
   }
   free_cmd_results(res);
  }
  list_del(config->cmd_queue, 0);
  list_free(res_list);
  free(line);
 }
}
