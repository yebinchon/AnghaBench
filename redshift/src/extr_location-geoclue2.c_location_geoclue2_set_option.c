
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int location_geoclue2_state_t ;


 char* _ (char*) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int
location_geoclue2_set_option(location_geoclue2_state_t *state,
        const char *key, const char *value)
{
 fprintf(stderr, _("Unknown method parameter: `%s'.\n"), key);
 return -1;
}
