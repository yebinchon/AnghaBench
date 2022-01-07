
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_binding {struct sway_binding* command; struct sway_binding* input; int syms; int keys; } ;


 int free (struct sway_binding*) ;
 int list_free_items_and_destroy (int ) ;

void free_sway_binding(struct sway_binding *binding) {
 if (!binding) {
  return;
 }

 list_free_items_and_destroy(binding->keys);
 list_free_items_and_destroy(binding->syms);
 free(binding->input);
 free(binding->command);
 free(binding);
}
