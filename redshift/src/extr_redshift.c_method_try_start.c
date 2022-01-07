
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gamma_state_t ;
struct TYPE_6__ {int (* init ) (int **) ;char* name; int (* set_option ) (int *,char const*,char*) ;int (* start ) (int *) ;int (* free ) (int *) ;} ;
typedef TYPE_1__ gamma_method_t ;
typedef int config_ini_state_t ;
struct TYPE_7__ {char const* name; char* value; struct TYPE_7__* next; } ;
typedef TYPE_2__ config_ini_setting_t ;
struct TYPE_8__ {TYPE_2__* settings; } ;
typedef TYPE_3__ config_ini_section_t ;


 char* _ (char*) ;
 TYPE_3__* config_ini_get_section (int *,char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int stub1 (int **) ;
 int stub2 (int *,char const*,char*) ;
 int stub3 (int *) ;
 int stub4 (int *,char const*,char*) ;
 int stub5 (int *) ;
 int stub6 (int *) ;
 int stub7 (int *) ;

__attribute__((used)) static int
method_try_start(const gamma_method_t *method,
   gamma_state_t **state, config_ini_state_t *config, char *args)
{
 int r;

 r = method->init(state);
 if (r < 0) {
  fprintf(stderr, _("Initialization of %s failed.\n"),
   method->name);
  return -1;
 }


 config_ini_section_t *section =
  config_ini_get_section(config, method->name);
 if (section != ((void*)0)) {
  config_ini_setting_t *setting = section->settings;
  while (setting != ((void*)0)) {
   r = method->set_option(
    *state, setting->name, setting->value);
   if (r < 0) {
    method->free(*state);
    fprintf(stderr, _("Failed to set %s"
        " option.\n"),
     method->name);


    fprintf(stderr, _("Try `-m %s:help' for more"
        " information.\n"),
     method->name);
    return -1;
   }
   setting = setting->next;
  }
 }


 while (args != ((void*)0)) {
  char *next_arg = strchr(args, ':');
  if (next_arg != ((void*)0)) *(next_arg++) = '\0';

  const char *key = args;
  char *value = strchr(args, '=');
  if (value == ((void*)0)) {
   fprintf(stderr, _("Failed to parse option `%s'.\n"),
    args);
   return -1;
  } else {
   *(value++) = '\0';
  }

  r = method->set_option(*state, key, value);
  if (r < 0) {
   method->free(*state);
   fprintf(stderr, _("Failed to set %s option.\n"),
    method->name);

   fprintf(stderr, _("Try -m %s:help' for more"
       " information.\n"), method->name);
   return -1;
  }

  args = next_arg;
 }


 r = method->start(*state);
 if (r < 0) {
  method->free(*state);
  fprintf(stderr, _("Failed to start adjustment method %s.\n"),
   method->name);
  return -1;
 }

 return 0;
}
