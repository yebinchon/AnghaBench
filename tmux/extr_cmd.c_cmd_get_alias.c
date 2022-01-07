
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union options_value {char const* string; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;


 int global_options ;
 struct options_array_item* options_array_first (struct options_entry*) ;
 union options_value* options_array_item_value (struct options_array_item*) ;
 struct options_array_item* options_array_next (struct options_array_item*) ;
 struct options_entry* options_get_only (int ,char*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char* xstrdup (char const*) ;

char *
cmd_get_alias(const char *name)
{
 struct options_entry *o;
 struct options_array_item *a;
 union options_value *ov;
 size_t wanted, n;
 const char *equals;

 o = options_get_only(global_options, "command-alias");
 if (o == ((void*)0))
  return (((void*)0));
 wanted = strlen(name);

 a = options_array_first(o);
 while (a != ((void*)0)) {
  ov = options_array_item_value(a);

  equals = strchr(ov->string, '=');
  if (equals != ((void*)0)) {
   n = equals - ov->string;
   if (n == wanted && strncmp(name, ov->string, n) == 0)
    return (xstrdup(equals + 1));
  }

  a = options_array_next(a);
 }
 return (((void*)0));
}
