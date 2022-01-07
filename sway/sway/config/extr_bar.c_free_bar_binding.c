
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_binding {struct bar_binding* command; } ;


 int free (struct bar_binding*) ;

void free_bar_binding(struct bar_binding *binding) {
 if (!binding) {
  return;
 }
 free(binding->command);
 free(binding);
}
