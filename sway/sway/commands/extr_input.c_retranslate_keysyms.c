
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {scalar_t__ identifier; scalar_t__ xkb_file; scalar_t__ xkb_layout; } ;
struct TYPE_4__ {TYPE_1__* input_configs; } ;
struct TYPE_3__ {int length; struct input_config** items; } ;


 TYPE_2__* config ;
 int translate_keysyms (struct input_config*) ;

__attribute__((used)) static void retranslate_keysyms(struct input_config *input_config) {
 for (int i = 0; i < config->input_configs->length; ++i) {
  struct input_config *ic = config->input_configs->items[i];
  if (ic->xkb_layout || ic->xkb_file) {

   if (ic->identifier == input_config->identifier) {
    translate_keysyms(ic);
   }

   return;
  }
 }
}
