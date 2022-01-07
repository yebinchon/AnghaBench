
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int output_priority; } ;
struct sway_output {int dummy; } ;
typedef int identifier ;


 int list_add (int ,int ) ;
 int output_get_identifier (char*,int,struct sway_output*) ;
 int strdup (char*) ;
 scalar_t__ workspace_output_get_priority (struct sway_workspace*,struct sway_output*) ;

void workspace_output_add_priority(struct sway_workspace *workspace,
  struct sway_output *output) {
 if (workspace_output_get_priority(workspace, output) < 0) {
  char identifier[128];
  output_get_identifier(identifier, sizeof(identifier), output);
  list_add(workspace->output_priority, strdup(identifier));
 }
}
