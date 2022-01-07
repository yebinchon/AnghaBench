
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct bar_binding {int release; int command; int button; } ;
typedef int list_t ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int * bindings; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* binding_add (struct bar_binding*,int *) ;
 struct cmd_results* binding_remove (struct bar_binding*,int *) ;
 struct bar_binding* calloc (int,int) ;
 struct cmd_results* checkarg (int,char const*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 int free (char*) ;
 int free_bar_binding (struct bar_binding*) ;
 int get_mouse_bindcode (char*,char**) ;
 int get_mouse_bindsym (char*,char**) ;
 int join_args (char**,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static struct cmd_results *bar_cmd_bind(int argc, char **argv, bool code,
  bool unbind) {
 int minargs = 2;
 const char *command;
 if (unbind) {
  minargs--;
  command = code ? "bar unbindcode" : "bar unbindsym";
 } else {
  command = code ? "bar bindcode" : "bar bindsym";
 }

 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, command, EXPECTED_AT_LEAST, minargs))) {
  return error;
 }

 struct bar_binding *binding = calloc(1, sizeof(struct bar_binding));
 if (!binding) {
  return cmd_results_new(CMD_FAILURE, "Unable to allocate bar binding");
 }

 binding->release = 0;
 if (strcmp("--release", argv[0]) == 0) {
  binding->release = 1;
  argv++;
  argc--;
 }

 char *message = ((void*)0);
 if (code) {
  binding->button = get_mouse_bindcode(argv[0], &message);
 } else {
  binding->button = get_mouse_bindsym(argv[0], &message);
 }
 if (message) {
  free_bar_binding(binding);
  error = cmd_results_new(CMD_INVALID, message);
  free(message);
  return error;
 } else if (!binding->button) {
  free_bar_binding(binding);
  return cmd_results_new(CMD_INVALID, "Unknown button %s", argv[0]);
 }
 list_t *bindings = config->current_bar->bindings;
 if (unbind) {
  return binding_remove(binding, bindings);
 }

 binding->command = join_args(argv + 1, argc - 1);
 return binding_add(binding, bindings);
}
