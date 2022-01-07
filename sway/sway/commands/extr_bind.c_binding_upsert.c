
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sway_binding {int dummy; } ;
struct TYPE_4__ {int length; struct sway_binding** items; } ;
typedef TYPE_1__ list_t ;


 scalar_t__ binding_key_compare (struct sway_binding*,struct sway_binding*) ;
 int list_add (TYPE_1__*,struct sway_binding*) ;

__attribute__((used)) static struct sway_binding *binding_upsert(struct sway_binding *binding,
  list_t *mode_bindings) {
 for (int i = 0; i < mode_bindings->length; ++i) {
  struct sway_binding *config_binding = mode_bindings->items[i];
  if (binding_key_compare(binding, config_binding)) {
   mode_bindings->items[i] = binding;
   return config_binding;
  }
 }

 list_add(mode_bindings, binding);
 return ((void*)0);
}
