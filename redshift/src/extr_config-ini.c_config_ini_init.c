
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int line ;
struct TYPE_6__ {TYPE_3__* sections; } ;
typedef TYPE_1__ config_ini_state_t ;
struct TYPE_7__ {int * value; int * name; struct TYPE_7__* next; } ;
typedef TYPE_2__ config_ini_setting_t ;
struct TYPE_8__ {TYPE_2__* settings; int * name; struct TYPE_8__* next; } ;
typedef TYPE_3__ config_ini_section_t ;
typedef int FILE ;


 int MAX_LINE_LENGTH ;
 int _ (char*) ;
 int config_ini_free (TYPE_1__*) ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int fputs (int ,int ) ;
 void* malloc (size_t) ;
 int memcpy (int *,char const*,size_t) ;
 int * open_config_file (char const*) ;
 int stderr ;
 char* strchr (char*,char) ;
 size_t strcspn (char*,char*) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;

int
config_ini_init(config_ini_state_t *state, const char *filepath)
{
 config_ini_section_t *section = ((void*)0);
 state->sections = ((void*)0);

 FILE *f = open_config_file(filepath);
 if (f == ((void*)0)) {

  if (filepath != ((void*)0)) return -1;
  return 0;
 }

 char line[MAX_LINE_LENGTH];
 char *s;

 while (1) {

  char *r = fgets(line, sizeof(line), f);
  if (r == ((void*)0)) break;


  s = line + strspn(line, " \t");
  s[strcspn(s, "\r\n")] = '\0';


  if (s[0] == ';' || s[0] == '#' || s[0] == '\0') continue;

  if (s[0] == '[') {

   const char *name = s+1;
   char *end = strchr(s, ']');
   if (end == ((void*)0) || end[1] != '\0' || end == name) {
    fputs(_("Malformed section header in config"
     " file.\n"), stderr);
    fclose(f);
    config_ini_free(state);
    return -1;
   }

   *end = '\0';


   section = malloc(sizeof(config_ini_section_t));
   if (section == ((void*)0)) {
    fclose(f);
    config_ini_free(state);
    return -1;
   }


   section->name = ((void*)0);
   section->settings = ((void*)0);
   section->next = state->sections;
   state->sections = section;


   section->name = malloc(end - name + 1);
   if (section->name == ((void*)0)) {
    fclose(f);
    config_ini_free(state);
    return -1;
   }

   memcpy(section->name, name, end - name + 1);
  } else {

   char *end = strchr(s, '=');
   if (end == ((void*)0) || end == s) {
    fputs(_("Malformed assignment in config"
     " file.\n"), stderr);
    fclose(f);
    config_ini_free(state);
    return -1;
   }

   *end = '\0';
   char *value = end + 1;

   if (section == ((void*)0)) {
    fputs(_("Assignment outside section in config"
     " file.\n"), stderr);
    fclose(f);
    config_ini_free(state);
    return -1;
   }


   config_ini_setting_t *setting =
    malloc(sizeof(config_ini_setting_t));
   if (setting == ((void*)0)) {
    fclose(f);
    config_ini_free(state);
    return -1;
   }


   setting->name = ((void*)0);
   setting->value = ((void*)0);
   setting->next = section->settings;
   section->settings = setting;


   setting->name = malloc(end - s + 1);
   if (setting->name == ((void*)0)) {
    fclose(f);
    config_ini_free(state);
    return -1;
   }

   memcpy(setting->name, s, end - s + 1);


   size_t value_len = strlen(value) + 1;
   setting->value = malloc(value_len);
   if (setting->value == ((void*)0)) {
    fclose(f);
    config_ini_free(state);
    return -1;
   }

   memcpy(setting->value, value, value_len);
  }
 }

 fclose(f);

 return 0;
}
