
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int options_t ;
typedef int location_provider_t ;
typedef int gamma_method_t ;
typedef int config_ini_state_t ;
struct TYPE_4__ {struct TYPE_4__* next; int value; int name; } ;
typedef TYPE_1__ config_ini_setting_t ;
struct TYPE_5__ {TYPE_1__* settings; } ;
typedef TYPE_2__ config_ini_section_t ;


 int EXIT_FAILURE ;
 TYPE_2__* config_ini_get_section (int *,char*) ;
 int exit (int ) ;
 int parse_config_file_option (int ,int ,int *,int const*,int const*) ;

void
options_parse_config_file(
 options_t *options, config_ini_state_t *config_state,
 const gamma_method_t *gamma_methods,
 const location_provider_t *location_providers)
{

 config_ini_section_t *section = config_ini_get_section(
  config_state, "redshift");
 if (section == ((void*)0)) return;

 config_ini_setting_t *setting = section->settings;
 while (setting != ((void*)0)) {
  int r = parse_config_file_option(
   setting->name, setting->value, options,
   gamma_methods, location_providers);
  if (r < 0) exit(EXIT_FAILURE);

  setting = setting->next;
 }
}
