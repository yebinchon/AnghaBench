
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_entry {char* alias; char* name; } ;


 struct cmd_entry** cmd_table ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlcat (char*,char*,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int xasprintf (char**,char*,char const*,...) ;

__attribute__((used)) static const struct cmd_entry *
cmd_find(const char *name, char **cause)
{
 const struct cmd_entry **loop, *entry, *found = ((void*)0);
 int ambiguous;
 char s[8192];

 ambiguous = 0;
 for (loop = cmd_table; *loop != ((void*)0); loop++) {
  entry = *loop;
  if (entry->alias != ((void*)0) && strcmp(entry->alias, name) == 0) {
   ambiguous = 0;
   found = entry;
   break;
  }

  if (strncmp(entry->name, name, strlen(name)) != 0)
   continue;
  if (found != ((void*)0))
   ambiguous = 1;
  found = entry;

  if (strcmp(entry->name, name) == 0)
   break;
 }
 if (ambiguous)
  goto ambiguous;
 if (found == ((void*)0)) {
  xasprintf(cause, "unknown command: %s", name);
  return (((void*)0));
 }
 return (found);

ambiguous:
 *s = '\0';
 for (loop = cmd_table; *loop != ((void*)0); loop++) {
  entry = *loop;
  if (strncmp(entry->name, name, strlen(name)) != 0)
   continue;
  if (strlcat(s, entry->name, sizeof s) >= sizeof s)
   break;
  if (strlcat(s, ", ", sizeof s) >= sizeof s)
   break;
 }
 s[strlen(s) - 2] = '\0';
 xasprintf(cause, "ambiguous command: %s, could be: %s", name, s);
 return (((void*)0));
}
