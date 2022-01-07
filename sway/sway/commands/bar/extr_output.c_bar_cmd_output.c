
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_8__ {int length; char** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_9__ {TYPE_1__* current_bar; } ;
struct TYPE_7__ {int id; TYPE_2__* outputs; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_6__* config ;
 TYPE_2__* create_list () ;
 int free (char*) ;
 int list_add (TYPE_2__*,int ) ;
 int list_del (TYPE_2__*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strdup (char const*) ;
 int sway_log (int ,char*,int ,char const*) ;

struct cmd_results *bar_cmd_output(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "output", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 const char *output = argv[0];
 list_t *outputs = config->current_bar->outputs;
 if (!outputs) {
  outputs = create_list();
  config->current_bar->outputs = outputs;
 }

 bool add_output = 1;
 if (strcmp("*", output) == 0) {

  while (outputs->length) {
   free(outputs->items[0]);
   list_del(outputs, 0);
  }
 } else {


  for (int i = 0; i < outputs->length; ++i) {
   const char *find = outputs->items[i];
   if (strcmp("*", find) == 0) {
    free(outputs->items[i]);
    list_del(outputs, i);
   } else if (strcmp(output, find) == 0) {
    add_output = 0;
    break;
   }
  }
 }

 if (add_output) {
  list_add(outputs, strdup(output));
  sway_log(SWAY_DEBUG, "Adding bar: '%s' to output '%s'",
    config->current_bar->id, output);
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
