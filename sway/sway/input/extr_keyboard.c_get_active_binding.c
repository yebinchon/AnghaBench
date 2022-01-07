
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xkb_layout_index_t ;
typedef scalar_t__ uint32_t ;
struct sway_shortcut_state {size_t npressed; scalar_t__* pressed_keys; scalar_t__ current_key; } ;
struct sway_binding {int flags; scalar_t__ modifiers; scalar_t__ group; int input; int order; TYPE_1__* keys; } ;
struct TYPE_5__ {int length; struct sway_binding** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_4__ {int length; scalar_t__* items; } ;


 int BINDING_LOCKED ;
 int BINDING_RELEASE ;
 int SWAY_DEBUG ;
 scalar_t__ XKB_LAYOUT_INVALID ;
 scalar_t__ strcmp (int ,char const*) ;
 int sway_log (int ,char*,int ,int ) ;

__attribute__((used)) static void get_active_binding(const struct sway_shortcut_state *state,
  list_t *bindings, struct sway_binding **current_binding,
  uint32_t modifiers, bool release, bool locked, const char *input,
  xkb_layout_index_t group) {
 for (int i = 0; i < bindings->length; ++i) {
  struct sway_binding *binding = bindings->items[i];
  bool binding_locked = (binding->flags & BINDING_LOCKED) != 0;
  bool binding_release = binding->flags & BINDING_RELEASE;

  if (modifiers ^ binding->modifiers ||
    release != binding_release ||
    locked > binding_locked ||
    (binding->group != XKB_LAYOUT_INVALID &&
     binding->group != group) ||
    (strcmp(binding->input, input) != 0 &&
     strcmp(binding->input, "*") != 0)) {
   continue;
  }

  bool match = 0;
  if (state->npressed == (size_t)binding->keys->length) {
   match = 1;
   for (size_t j = 0; j < state->npressed; j++) {
    uint32_t key = *(uint32_t *)binding->keys->items[j];
    if (key != state->pressed_keys[j]) {
     match = 0;
     break;
    }
   }
  } else if (binding->keys->length == 1) {




   match = state->current_key == *(uint32_t *)binding->keys->items[0];
  }
  if (!match) {
   continue;
  }

  if (*current_binding) {
   if (*current_binding == binding) {
    continue;
   }

   bool current_locked =
    ((*current_binding)->flags & BINDING_LOCKED) != 0;
   bool current_input = strcmp((*current_binding)->input, input) == 0;
   bool current_group_set =
    (*current_binding)->group != XKB_LAYOUT_INVALID;
   bool binding_input = strcmp(binding->input, input) == 0;
   bool binding_group_set = binding->group != XKB_LAYOUT_INVALID;

   if (current_input == binding_input
     && current_locked == binding_locked
     && current_group_set == binding_group_set) {
    sway_log(SWAY_DEBUG,
      "Encountered conflicting bindings %d and %d",
      (*current_binding)->order, binding->order);
    continue;
   }

   if (current_input && !binding_input) {
    continue;
   }

   if (current_input == binding_input &&
       (*current_binding)->group == group) {
    continue;
   }

   if (current_input == binding_input &&
     current_group_set == binding_group_set &&
     current_locked == locked) {
    continue;
   }
  }

  *current_binding = binding;
  if (strcmp((*current_binding)->input, input) == 0 &&
    (((*current_binding)->flags & BINDING_LOCKED) == locked) &&
    (*current_binding)->group == group) {
   return;
  }
 }
}
