
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sway_binding {int type; } ;
struct TYPE_6__ {int length; struct sway_binding** items; } ;
typedef TYPE_1__ list_t ;




 int binding_add_translated (struct sway_binding*,TYPE_1__*) ;
 int sway_assert (int,char*,int) ;
 int translate_binding (struct sway_binding*) ;

__attribute__((used)) static void translate_binding_list(list_t *bindings, list_t *bindsyms,
  list_t *bindcodes) {
 for (int i = 0; i < bindings->length; ++i) {
  struct sway_binding *binding = bindings->items[i];
  translate_binding(binding);

  switch (binding->type) {
  case 128:
   binding_add_translated(binding, bindsyms);
   break;
  case 129:
   binding_add_translated(binding, bindcodes);
   break;
  default:
   sway_assert(0, "unexpected translated binding type: %d",
     binding->type);
   break;
  }

 }
}
