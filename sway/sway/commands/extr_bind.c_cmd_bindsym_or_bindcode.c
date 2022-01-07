
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_binding {int group; int flags; scalar_t__ type; scalar_t__ order; int command; TYPE_4__* keys; int modifiers; void* input; } ;
struct cmd_results {int dummy; } ;
struct TYPE_13__ {int length; char** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_15__ {TYPE_1__* current_mode; } ;
struct TYPE_14__ {scalar_t__ length; } ;
struct TYPE_12__ {TYPE_2__* mouse_bindings; TYPE_2__* keysym_bindings; TYPE_2__* keycode_bindings; } ;


 int BINDING_BORDER ;
 int BINDING_CODE ;
 int BINDING_CONTENTS ;
 scalar_t__ BINDING_KEYCODE ;
 scalar_t__ BINDING_KEYSYM ;
 int BINDING_LOCKED ;
 scalar_t__ BINDING_MOUSECODE ;
 scalar_t__ BINDING_MOUSESYM ;
 int BINDING_RELEASE ;
 int BINDING_TITLEBAR ;
 int CMD_FAILURE ;
 int EXPECTED_AT_LEAST ;
 int SWAY_INFO ;
 int XKB_LAYOUT_INVALID ;
 struct cmd_results* binding_add (struct sway_binding*,TYPE_2__*,char const*,char*,int) ;
 int binding_order ;
 struct cmd_results* binding_remove (struct sway_binding*,TYPE_2__*,char const*,char*) ;
 void* calloc (int,int) ;
 struct cmd_results* checkarg (int,char const*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_9__* config ;
 TYPE_4__* create_list () ;
 int free (void*) ;
 int free_sway_binding (struct sway_binding*) ;
 int get_modifier_mask_by_name (char*) ;
 struct cmd_results* identify_key (char*,int,int *,scalar_t__*) ;
 int join_args (char**,int) ;
 int key_qsort_cmp ;
 int list_add (TYPE_4__*,int *) ;
 int list_free (TYPE_2__*) ;
 int list_free_items_and_destroy (TYPE_2__*) ;
 int list_qsort (TYPE_4__*,int ) ;
 TYPE_2__* split_string (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,char**,int) ;
 int sway_log (int ,char*,char*) ;
 int translate_binding (struct sway_binding*) ;

__attribute__((used)) static struct cmd_results *cmd_bindsym_or_bindcode(int argc, char **argv,
  bool bindcode, bool unbind) {
 const char *bindtype;
 int minargs = 2;
 if (unbind) {
  bindtype = bindcode ? "unbindcode" : "unbindsym";
  minargs--;
 } else {
  bindtype = bindcode ? "bindcode": "bindsym";
 }

 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, bindtype, EXPECTED_AT_LEAST, minargs))) {
  return error;
 }

 struct sway_binding *binding = calloc(1, sizeof(struct sway_binding));
 if (!binding) {
  return cmd_results_new(CMD_FAILURE, "Unable to allocate binding");
 }
 binding->input = strdup("*");
 binding->keys = create_list();
 binding->group = XKB_LAYOUT_INVALID;
 binding->modifiers = 0;
 binding->flags = 0;
 binding->type = bindcode ? BINDING_KEYCODE : BINDING_KEYSYM;

 bool exclude_titlebar = 0;
 bool warn = 1;

 while (argc > 0) {
  if (strcmp("--release", argv[0]) == 0) {
   binding->flags |= BINDING_RELEASE;
  } else if (strcmp("--locked", argv[0]) == 0) {
   binding->flags |= BINDING_LOCKED;
  } else if (strcmp("--whole-window", argv[0]) == 0) {
   binding->flags |= BINDING_BORDER | BINDING_CONTENTS | BINDING_TITLEBAR;
  } else if (strcmp("--border", argv[0]) == 0) {
   binding->flags |= BINDING_BORDER;
  } else if (strcmp("--to-code", argv[0]) == 0) {
   if (!bindcode) {
    binding->flags |= BINDING_CODE;
   }
  } else if (strcmp("--exclude-titlebar", argv[0]) == 0) {
   exclude_titlebar = 1;
  } else if (strncmp("--input-device=", argv[0],
     strlen("--input-device=")) == 0) {
   free(binding->input);
   binding->input = strdup(argv[0] + strlen("--input-device="));
  } else if (strcmp("--no-warn", argv[0]) == 0) {
   warn = 0;
  } else {
   break;
  }
  argv++;
  argc--;
 }
 if (binding->flags & (BINDING_BORDER | BINDING_CONTENTS | BINDING_TITLEBAR)
   || exclude_titlebar) {
  binding->type = binding->type == BINDING_KEYCODE ?
   BINDING_MOUSECODE : BINDING_MOUSESYM;
 }

 if (argc < minargs) {
  free_sway_binding(binding);
  return cmd_results_new(CMD_FAILURE,
   "Invalid %s command "
   "(expected at least %d non-option arguments, got %d)",
   bindtype, minargs, argc);
 }

 list_t *split = split_string(argv[0], "+");
 for (int i = 0; i < split->length; ++i) {

  if (strncmp(split->items[i], "Group", strlen("Group")) == 0) {
   if (binding->group != XKB_LAYOUT_INVALID) {
    free_sway_binding(binding);
    list_free_items_and_destroy(split);
    return cmd_results_new(CMD_FAILURE,
      "Only one group can be specified");
   }
   char *end;
   int group = strtol(split->items[i] + strlen("Group"), &end, 10);
   if (group < 1 || group > 4 || end[0] != '\0') {
    free_sway_binding(binding);
    list_free_items_and_destroy(split);
    return cmd_results_new(CMD_FAILURE, "Invalid group");
   }
   binding->group = group - 1;
   continue;
  } else if (strcmp(split->items[i], "Mode_switch") == 0) {

   if (binding->group != XKB_LAYOUT_INVALID) {
    free_sway_binding(binding);
    list_free_items_and_destroy(split);
    return cmd_results_new(CMD_FAILURE,
      "Only one group can be specified");
   }
   binding->group = 1;
  }


  uint32_t mod;
  if ((mod = get_modifier_mask_by_name(split->items[i])) > 0) {
   binding->modifiers |= mod;
   continue;
  }


  uint32_t key_val = 0;
  error = identify_key(split->items[i], binding->keys->length == 0,
         &key_val, &binding->type);
  if (error) {
   free_sway_binding(binding);
   list_free(split);
   return error;
  }

  uint32_t *key = calloc(1, sizeof(uint32_t));
  if (!key) {
   free_sway_binding(binding);
   list_free_items_and_destroy(split);
   return cmd_results_new(CMD_FAILURE,
     "Unable to allocate binding key");
  }
  *key = key_val;
  list_add(binding->keys, key);
 }
 list_free_items_and_destroy(split);



 if (exclude_titlebar) {
  binding->flags &= ~BINDING_TITLEBAR;
 } else if (binding->type == BINDING_MOUSECODE
   || binding->type == BINDING_MOUSESYM) {
  binding->flags |= BINDING_TITLEBAR;
 }


 list_qsort(binding->keys, key_qsort_cmp);


 if (!translate_binding(binding)) {
  sway_log(SWAY_INFO,
    "Unable to translate bindsym into bindcode: %s", argv[0]);
 }

 list_t *mode_bindings;
 if (binding->type == BINDING_KEYCODE) {
  mode_bindings = config->current_mode->keycode_bindings;
 } else if (binding->type == BINDING_KEYSYM) {
  mode_bindings = config->current_mode->keysym_bindings;
 } else {
  mode_bindings = config->current_mode->mouse_bindings;
 }

 if (unbind) {
  return binding_remove(binding, mode_bindings, bindtype, argv[0]);
 }

 binding->command = join_args(argv + 1, argc - 1);
 binding->order = binding_order++;
 return binding_add(binding, mode_bindings, bindtype, argv[0], warn);
}
