
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sections; } ;
typedef TYPE_1__ config_ini_state_t ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* name; struct TYPE_7__* value; struct TYPE_7__* settings; } ;
typedef TYPE_2__ config_ini_setting_t ;
typedef TYPE_2__ config_ini_section_t ;


 int free (TYPE_2__*) ;

void
config_ini_free(config_ini_state_t *state)
{
 config_ini_section_t *section = state->sections;

 while (section != ((void*)0)) {
  config_ini_setting_t *setting = section->settings;
  config_ini_section_t *section_prev = section;

  while (setting != ((void*)0)) {
   config_ini_setting_t *setting_prev = setting;
   free(setting->name);
   free(setting->value);
   setting = setting->next;
   free(setting_prev);
  }

  free(section->name);
  section = section->next;
  free(section_prev);
 }
}
