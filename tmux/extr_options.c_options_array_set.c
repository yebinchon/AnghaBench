
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct options_entry {int dummy; } ;
struct TYPE_2__ {char* string; int cmdlist; } ;
struct options_array_item {TYPE_1__ value; } ;
struct cmd_parse_result {int status; char* error; int cmdlist; } ;





 int OPTIONS_IS_ARRAY (struct options_entry*) ;
 scalar_t__ OPTIONS_IS_COMMAND (struct options_entry*) ;
 scalar_t__ OPTIONS_IS_STRING (struct options_entry*) ;
 struct cmd_parse_result* cmd_parse_from_string (char const*,int *) ;
 int free (char*) ;
 int options_array_free (struct options_entry*,struct options_array_item*) ;
 struct options_array_item* options_array_item (struct options_entry*,int ) ;
 struct options_array_item* options_array_new (struct options_entry*,int ) ;
 int options_value_free (struct options_entry*,TYPE_1__*) ;
 int xasprintf (char**,char*,char*,char const*) ;
 char* xstrdup (char const*) ;

int
options_array_set(struct options_entry *o, u_int idx, const char *value,
    int append, char **cause)
{
 struct options_array_item *a;
 char *new;
 struct cmd_parse_result *pr;

 if (!OPTIONS_IS_ARRAY(o)) {
  if (cause != ((void*)0))
   *cause = xstrdup("not an array");
  return (-1);
 }

 if (value == ((void*)0)) {
  a = options_array_item(o, idx);
  if (a != ((void*)0))
   options_array_free(o, a);
  return (0);
 }

 if (OPTIONS_IS_COMMAND(o)) {
  pr = cmd_parse_from_string(value, ((void*)0));
  switch (pr->status) {
  case 130:
   if (cause != ((void*)0))
    *cause = xstrdup("empty command");
   return (-1);
  case 129:
   if (cause != ((void*)0))
    *cause = pr->error;
   else
    free(pr->error);
   return (-1);
  case 128:
   break;
  }

  a = options_array_item(o, idx);
  if (a == ((void*)0))
   a = options_array_new(o, idx);
  else
   options_value_free(o, &a->value);
  a->value.cmdlist = pr->cmdlist;
  return (0);
 }

 if (OPTIONS_IS_STRING(o)) {
  a = options_array_item(o, idx);
  if (a != ((void*)0) && append)
   xasprintf(&new, "%s%s", a->value.string, value);
  else
   new = xstrdup(value);
  if (a == ((void*)0))
   a = options_array_new(o, idx);
  else
   options_value_free(o, &a->value);
  a->value.string = new;
  return (0);
 }

 if (cause != ((void*)0))
  *cause = xstrdup("wrong array type");
 return (-1);
}
