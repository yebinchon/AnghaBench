
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {TYPE_2__* output_priority; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
typedef int exclude_id ;
struct TYPE_4__ {int length; char** items; } ;
struct TYPE_3__ {char* name; } ;


 struct sway_output* output_by_name_or_id (char*) ;
 int output_get_identifier (char*,int,struct sway_output*) ;
 scalar_t__ strcmp (char*,char*) ;

struct sway_output *workspace_output_get_highest_available(
  struct sway_workspace *ws, struct sway_output *exclude) {
 char exclude_id[128] = {'\0'};
 if (exclude) {
  output_get_identifier(exclude_id, sizeof(exclude_id), exclude);
 }

 for (int i = 0; i < ws->output_priority->length; i++) {
  char *name = ws->output_priority->items[i];
  if (exclude && (strcmp(name, exclude->wlr_output->name) == 0
     || strcmp(name, exclude_id) == 0)) {
   continue;
  }

  struct sway_output *output = output_by_name_or_id(name);
  if (output) {
   return output;
  }
 }

 return ((void*)0);
}
