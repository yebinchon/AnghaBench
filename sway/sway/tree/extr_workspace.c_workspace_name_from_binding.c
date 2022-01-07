
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_binding {char* command; int order; } ;


 int SWAY_DEBUG ;
 char* argsep (char**,char*,int *) ;
 char* do_var_replacement (char*) ;
 int free (char*) ;
 scalar_t__ isdigit (char) ;
 char* malloc (size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strip_quotes (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char*,size_t) ;
 int sway_log (int ,char*,char*) ;
 scalar_t__ workspace_by_name (char*) ;
 scalar_t__ workspace_by_number (char*) ;
 int workspace_valid_on_output (char const*,char*) ;

__attribute__((used)) static void workspace_name_from_binding(const struct sway_binding * binding,
  const char* output_name, int *min_order, char **earliest_name) {
 char *cmdlist = strdup(binding->command);
 char *dup = cmdlist;
 char *name = ((void*)0);


 char *cmd = argsep(&cmdlist, " ", ((void*)0));
 if (cmdlist) {
  name = argsep(&cmdlist, ",;", ((void*)0));
 }



 if (strcmp("workspace", cmd) == 0 && name) {
  char *_target = strdup(name);
  _target = do_var_replacement(_target);
  strip_quotes(_target);
  sway_log(SWAY_DEBUG, "Got valid workspace command for target: '%s'",
    _target);



  if (strcmp(_target, "next") == 0 ||
    strcmp(_target, "prev") == 0 ||
    strncmp(_target, "next_on_output",
     strlen("next_on_output")) == 0 ||
    strncmp(_target, "prev_on_output",
     strlen("next_on_output")) == 0 ||
    strcmp(_target, "number") == 0 ||
    strcmp(_target, "back_and_forth") == 0 ||
    strcmp(_target, "current") == 0) {
   free(_target);
   free(dup);
   return;
  }


  if (strncmp(_target, "number ", strlen("number ")) == 0) {
   size_t length = strlen(_target) - strlen("number ") + 1;
   char *temp = malloc(length);
   strncpy(temp, _target + strlen("number "), length - 1);
   temp[length - 1] = '\0';
   free(_target);
   _target = temp;
   sway_log(SWAY_DEBUG, "Isolated name from workspace number: '%s'", _target);


   if (isdigit(_target[0]) && workspace_by_number(_target)) {
    free(_target);
    free(dup);
    return;
   }
  }


  if (workspace_by_name(_target)) {
   free(_target);
   free(dup);
   return;
  }



  if (!workspace_valid_on_output(output_name, _target)) {
   free(_target);
   free(dup);
   return;
  }

  if (binding->order < *min_order) {
   *min_order = binding->order;
   free(*earliest_name);
   *earliest_name = _target;
   sway_log(SWAY_DEBUG, "Workspace: Found free name %s", _target);
  } else {
   free(_target);
  }
 }
 free(dup);
}
