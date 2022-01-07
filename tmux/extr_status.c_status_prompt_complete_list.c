
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct options_table_entry {char const* name; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;
struct cmd_entry {char const* name; } ;
struct TYPE_2__ {char* string; } ;


 struct cmd_entry** cmd_table ;
 int global_options ;
 int log_debug (char*,size_t,char*) ;
 struct options_array_item* options_array_first (struct options_entry*) ;
 TYPE_1__* options_array_item_value (struct options_array_item*) ;
 struct options_array_item* options_array_next (struct options_array_item*) ;
 struct options_entry* options_get_only (int ,char*) ;
 struct options_table_entry* options_table ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char** xreallocarray (char**,size_t,int) ;
 char* xstrdup (char const*) ;
 char* xstrndup (char const*,size_t) ;

char **
status_prompt_complete_list(u_int *size, const char *s)
{
 char **list = ((void*)0);
 const char **layout, *value, *cp;
 const struct cmd_entry **cmdent;
 const struct options_table_entry *oe;
 u_int idx;
 size_t slen = strlen(s), valuelen;
 struct options_entry *o;
 struct options_array_item *a;
 const char *layouts[] = {
  "even-horizontal", "even-vertical", "main-horizontal",
  "main-vertical", "tiled", ((void*)0)
 };

 *size = 0;
 for (cmdent = cmd_table; *cmdent != ((void*)0); cmdent++) {
  if (strncmp((*cmdent)->name, s, slen) == 0) {
   list = xreallocarray(list, (*size) + 1, sizeof *list);
   list[(*size)++] = xstrdup((*cmdent)->name);
  }
 }
 for (oe = options_table; oe->name != ((void*)0); oe++) {
  if (strncmp(oe->name, s, slen) == 0) {
   list = xreallocarray(list, (*size) + 1, sizeof *list);
   list[(*size)++] = xstrdup(oe->name);
  }
 }
 for (layout = layouts; *layout != ((void*)0); layout++) {
  if (strncmp(*layout, s, slen) == 0) {
   list = xreallocarray(list, (*size) + 1, sizeof *list);
   list[(*size)++] = xstrdup(*layout);
  }
 }
 o = options_get_only(global_options, "command-alias");
 if (o != ((void*)0)) {
  a = options_array_first(o);
  while (a != ((void*)0)) {
   value = options_array_item_value(a)->string;
   if ((cp = strchr(value, '=')) == ((void*)0))
    goto next;
   valuelen = cp - value;
   if (slen > valuelen || strncmp(value, s, slen) != 0)
    goto next;

   list = xreallocarray(list, (*size) + 1, sizeof *list);
   list[(*size)++] = xstrndup(value, valuelen);

  next:
   a = options_array_next(a);
  }
 }
 for (idx = 0; idx < (*size); idx++)
  log_debug("complete %u: %s", idx, list[idx]);
 return (list);
}
