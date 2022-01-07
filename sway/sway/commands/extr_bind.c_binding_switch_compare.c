
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_switch_binding {scalar_t__ type; scalar_t__ state; int flags; } ;


 int BINDING_LOCKED ;

__attribute__((used)) static bool binding_switch_compare(struct sway_switch_binding *binding_a,
  struct sway_switch_binding *binding_b) {
 if (binding_a->type != binding_b->type) {
  return 0;
 }
 if (binding_a->state != binding_b->state) {
  return 0;
 }
 if ((binding_a->flags & BINDING_LOCKED) !=
   (binding_b->flags & BINDING_LOCKED)) {
  return 0;
 }
 return 1;
}
