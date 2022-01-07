
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int output_priority; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
typedef int identifier ;
struct TYPE_2__ {char* name; } ;


 int find_output ;
 int list_seq_find (int ,int ,char*) ;
 int output_get_identifier (char*,int,struct sway_output*) ;

__attribute__((used)) static int workspace_output_get_priority(struct sway_workspace *ws,
  struct sway_output *output) {
 char identifier[128];
 output_get_identifier(identifier, sizeof(identifier), output);
 int index_id = list_seq_find(ws->output_priority, find_output, identifier);
 int index_name = list_seq_find(ws->output_priority, find_output,
   output->wlr_output->name);
 return index_name < 0 || index_id < index_name ? index_id : index_name;
}
