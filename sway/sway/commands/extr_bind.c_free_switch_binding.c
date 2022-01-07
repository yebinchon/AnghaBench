
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_switch_binding {struct sway_switch_binding* command; } ;


 int free (struct sway_switch_binding*) ;

void free_switch_binding(struct sway_switch_binding *binding) {
 if (!binding) {
  return;
 }
 free(binding->command);
 free(binding);
}
