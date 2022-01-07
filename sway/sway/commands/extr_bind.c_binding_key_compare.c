
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sway_binding {scalar_t__ type; scalar_t__ flags; scalar_t__ group; int modifiers; TYPE_1__* keys; int input; } ;
struct TYPE_2__ {int length; scalar_t__* items; } ;


 scalar_t__ BINDING_BORDER ;
 scalar_t__ BINDING_CONTENTS ;
 scalar_t__ BINDING_LOCKED ;
 scalar_t__ BINDING_RELEASE ;
 scalar_t__ BINDING_TITLEBAR ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool binding_key_compare(struct sway_binding *binding_a,
  struct sway_binding *binding_b) {
 if (strcmp(binding_a->input, binding_b->input) != 0) {
  return 0;
 }

 if (binding_a->type != binding_b->type) {
  return 0;
 }

 uint32_t conflict_generating_flags = BINDING_RELEASE | BINDING_BORDER
   | BINDING_CONTENTS | BINDING_TITLEBAR | BINDING_LOCKED;
 if ((binding_a->flags & conflict_generating_flags) !=
   (binding_b->flags & conflict_generating_flags)) {
  return 0;
 }

 if (binding_a->group != binding_b->group) {
  return 0;
 }

 if (binding_a->modifiers ^ binding_b->modifiers) {
  return 0;
 }

 if (binding_a->keys->length != binding_b->keys->length) {
  return 0;
 }


 int keys_len = binding_a->keys->length;
 for (int i = 0; i < keys_len; ++i) {
  uint32_t key_a = *(uint32_t *)binding_a->keys->items[i];
  uint32_t key_b = *(uint32_t *)binding_b->keys->items[i];
  if (key_a != key_b) {
   return 0;
  }
 }

 return 1;
}
