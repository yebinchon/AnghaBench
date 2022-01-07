
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {TYPE_1__* output_priority; } ;
struct sway_output {int dummy; } ;
typedef int identifier ;
struct TYPE_3__ {char** items; } ;


 int list_del (TYPE_1__*,int) ;
 int list_insert (TYPE_1__*,int,char*) ;
 int output_get_identifier (char*,int,struct sway_output*) ;
 char* strdup (char*) ;
 int workspace_output_get_priority (struct sway_workspace*,struct sway_output*) ;

void workspace_output_raise_priority(struct sway_workspace *ws,
  struct sway_output *old_output, struct sway_output *output) {
 int old_index = workspace_output_get_priority(ws, old_output);
 if (old_index < 0) {
  return;
 }

 int new_index = workspace_output_get_priority(ws, output);
 if (new_index < 0) {
  char identifier[128];
  output_get_identifier(identifier, sizeof(identifier), output);
  list_insert(ws->output_priority, old_index, strdup(identifier));
 } else if (new_index > old_index) {
  char *name = ws->output_priority->items[new_index];
  list_del(ws->output_priority, new_index);
  list_insert(ws->output_priority, old_index, name);
 }
}
