
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float lat; float lon; } ;
struct TYPE_5__ {TYPE_1__ loc; } ;
typedef TYPE_2__ location_manual_state_t ;


 char* _ (char*) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char const*) ;
 int fputs (char*,int ) ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;
 float strtof (char const*,char**) ;

__attribute__((used)) static int
location_manual_set_option(location_manual_state_t *state, const char *key,
      const char *value)
{

 char *end;
 errno = 0;
 float v = strtof(value, &end);
 if (errno != 0 || *end != '\0') {
  fputs(_("Malformed argument.\n"), stderr);
  return -1;
 }

 if (strcasecmp(key, "lat") == 0) {
  state->loc.lat = v;
 } else if (strcasecmp(key, "lon") == 0) {
  state->loc.lon = v;
 } else {
  fprintf(stderr, _("Unknown method parameter: `%s'.\n"), key);
  return -1;
 }

 return 0;
}
