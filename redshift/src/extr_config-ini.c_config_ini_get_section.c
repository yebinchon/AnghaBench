
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sections; } ;
typedef TYPE_1__ config_ini_state_t ;
struct TYPE_6__ {struct TYPE_6__* next; int name; } ;
typedef TYPE_2__ config_ini_section_t ;


 scalar_t__ strcasecmp (int ,char const*) ;

config_ini_section_t *
config_ini_get_section(config_ini_state_t *state, const char *name)
{
 config_ini_section_t *section = state->sections;
 while (section != ((void*)0)) {
  if (strcasecmp(section->name, name) == 0) {
   return section;
  }
  section = section->next;
 }

 return ((void*)0);
}
