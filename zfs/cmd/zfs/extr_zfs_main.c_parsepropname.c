
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int nomem () ;
 scalar_t__ nvlist_add_boolean (int *,char*) ;
 scalar_t__ nvlist_exists (int *,char*) ;
 int stderr ;
 int * strchr (char*,char) ;

__attribute__((used)) static boolean_t
parsepropname(nvlist_t *props, char *propname)
{
 if (strchr(propname, '=') != ((void*)0)) {
  (void) fprintf(stderr, gettext("invalid character "
      "'=' in property argument\n"));
  return (B_FALSE);
 }
 if (nvlist_exists(props, propname)) {
  (void) fprintf(stderr, gettext("property '%s' "
      "specified multiple times\n"), propname);
  return (B_FALSE);
 }
 if (nvlist_add_boolean(props, propname) != 0)
  nomem();
 return (B_TRUE);
}
