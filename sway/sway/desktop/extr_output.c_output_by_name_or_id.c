
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_output {TYPE_1__* wlr_output; } ;
typedef int identifier ;
struct TYPE_6__ {TYPE_2__* outputs; } ;
struct TYPE_5__ {int length; struct sway_output** items; } ;
struct TYPE_4__ {char* name; } ;


 int output_get_identifier (char*,int,struct sway_output*) ;
 TYPE_3__* root ;
 scalar_t__ strcasecmp (char*,char const*) ;

struct sway_output *output_by_name_or_id(const char *name_or_id) {
 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  char identifier[128];
  output_get_identifier(identifier, sizeof(identifier), output);
  if (strcasecmp(identifier, name_or_id) == 0
    || strcasecmp(output->wlr_output->name, name_or_id) == 0) {
   return output;
  }
 }
 return ((void*)0);
}
