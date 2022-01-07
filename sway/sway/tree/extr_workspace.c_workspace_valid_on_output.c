
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct workspace_config {TYPE_2__* outputs; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
typedef int identifier ;
struct TYPE_4__ {int length; int * items; } ;
struct TYPE_3__ {char* name; } ;


 struct sway_output* output_by_name_or_id (char const*) ;
 int output_get_identifier (char*,int,struct sway_output*) ;
 scalar_t__ strcmp (int ,char const*) ;
 struct workspace_config* workspace_find_config (char const*) ;

__attribute__((used)) static bool workspace_valid_on_output(const char *output_name,
  const char *ws_name) {
 struct workspace_config *wsc = workspace_find_config(ws_name);
 char identifier[128];
 struct sway_output *output = output_by_name_or_id(output_name);
 if (!output) {
  return 0;
 }
 output_name = output->wlr_output->name;
 output_get_identifier(identifier, sizeof(identifier), output);

 if (!wsc) {
  return 1;
 }

 for (int i = 0; i < wsc->outputs->length; i++) {
  if (strcmp(wsc->outputs->items[i], "*") == 0 ||
    strcmp(wsc->outputs->items[i], output_name) == 0 ||
    strcmp(wsc->outputs->items[i], identifier) == 0) {
   return 1;
  }
 }

 return 0;
}
