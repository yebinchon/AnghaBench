
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct bar_binding {scalar_t__ button; scalar_t__ release; } ;
struct TYPE_7__ {int length; struct bar_binding** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_8__ {TYPE_1__* current_bar; } ;
struct TYPE_6__ {int id; } ;


 int CMD_SUCCESS ;
 int SWAY_DEBUG ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_4__* config ;
 int free_bar_binding (struct bar_binding*) ;
 char* get_mouse_button_name (scalar_t__) ;
 int list_add (TYPE_2__*,struct bar_binding*) ;
 int sway_log (int ,char*,int ,scalar_t__,char const*,char*) ;

__attribute__((used)) static struct cmd_results *binding_add(struct bar_binding *binding,
  list_t *mode_bindings) {
 const char *name = get_mouse_button_name(binding->button);
 bool overwritten = 0;
 for (int i = 0; i < mode_bindings->length; i++) {
  struct bar_binding *other = mode_bindings->items[i];
  if (other->button == binding->button &&
    other->release == binding->release) {
   overwritten = 1;
   mode_bindings->items[i] = binding;
   free_bar_binding(other);
   sway_log(SWAY_DEBUG, "[bar %s] Updated binding for %u (%s)%s",
     config->current_bar->id, binding->button, name,
     binding->release ? " - release" : "");
   break;
  }
 }
 if (!overwritten) {
  list_add(mode_bindings, binding);
  sway_log(SWAY_DEBUG, "[bar %s] Added binding for %u (%s)%s",
    config->current_bar->id, binding->button, name,
    binding->release ? " - release" : "");
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
