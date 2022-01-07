
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_table_entry {int * name; } ;


 int free (char*) ;
 char* options_parse (char const*,int*) ;
 struct options_table_entry* options_table ;
 scalar_t__ strcmp (int *,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (int *,char*,size_t) ;
 char* xstrdup (int *) ;

char *
options_match(const char *s, int *idx, int *ambiguous)
{
 const struct options_table_entry *oe, *found;
 char *name;
 size_t namelen;

 name = options_parse(s, idx);
 if (name == ((void*)0))
  return (((void*)0));
 namelen = strlen(name);

 if (*name == '@') {
  *ambiguous = 0;
  return (name);
 }

 found = ((void*)0);
 for (oe = options_table; oe->name != ((void*)0); oe++) {
  if (strcmp(oe->name, name) == 0) {
   found = oe;
   break;
  }
  if (strncmp(oe->name, name, namelen) == 0) {
   if (found != ((void*)0)) {
    *ambiguous = 1;
    free(name);
    return (((void*)0));
   }
   found = oe;
  }
 }
 free(name);
 if (found == ((void*)0)) {
  *ambiguous = 0;
  return (((void*)0));
 }
 return (xstrdup(found->name));
}
