
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_binding {struct swaybar_binding* command; } ;


 int free (struct swaybar_binding*) ;

void free_binding(struct swaybar_binding *binding) {
 if (!binding) {
  return;
 }
 free(binding->command);
 free(binding);
}
