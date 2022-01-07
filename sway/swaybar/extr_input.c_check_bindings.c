
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct swaybar_binding {scalar_t__ button; int release; } ;
struct swaybar {TYPE_2__* config; } ;
struct TYPE_4__ {TYPE_1__* bindings; } ;
struct TYPE_3__ {int length; struct swaybar_binding** items; } ;


 scalar_t__ WL_POINTER_BUTTON_STATE_RELEASED ;
 int ipc_execute_binding (struct swaybar*,struct swaybar_binding*) ;

__attribute__((used)) static bool check_bindings(struct swaybar *bar, uint32_t button,
  uint32_t state) {
 bool released = state == WL_POINTER_BUTTON_STATE_RELEASED;
 for (int i = 0; i < bar->config->bindings->length; i++) {
  struct swaybar_binding *binding = bar->config->bindings->items[i];
  if (binding->button == button && binding->release == released) {
   ipc_execute_binding(bar, binding);
   return 1;
  }
 }
 return 0;
}
