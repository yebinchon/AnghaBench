
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quartz_state_t ;


 char* _ (char*) ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static int
quartz_set_option(quartz_state_t *state, const char *key, const char *value)
{
 if (strcasecmp(key, "preserve") == 0) {
  fprintf(stderr, _("Parameter `%s` is now always on; "
      " Use the `%s` command-line option"
      " to disable.\n"),
   key, "-P");
 } else {
  fprintf(stderr, _("Unknown method parameter: `%s'.\n"), key);
  return -1;
 }

 return 0;
}
