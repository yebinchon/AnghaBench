
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int
gamma_dummy_set_option(void *state, const char *key, const char *value)
{
 fprintf(stderr, _("Unknown method parameter: `%s'.\n"), key);
 return -1;
}
