
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option_info {int name; } ;
typedef int buf ;
typedef int FILE ;


 int ARRAY_SIZE (struct option_info*) ;
 int SIZEOF_STR ;
 char* enum_name (int ) ;
 char* format_option_value (struct option_info*,char*,int) ;
 int io_fprintf (int *,char*,char const*,...) ;
 struct option_info* option_info ;
 int strlen (char const*) ;
 int suffixcmp (char const*,int ,char*) ;

__attribute__((used)) static bool
save_option_settings(FILE *file)
{
 char buf[SIZEOF_STR];
 int i;

 if (!io_fprintf(file, "%s", "\n## Settings\n"))
  return 0;

 for (i = 0; i < ARRAY_SIZE(option_info); i++) {
  struct option_info *option = &option_info[i];
  const char *name = enum_name(option->name);
  const char *value = format_option_value(option, buf, sizeof(buf));

  if (!value)
   return 0;

  if (!suffixcmp(name, strlen(name), "-args"))
   continue;

  if (!io_fprintf(file, "\nset %-25s = %s", name, value))
   return 0;
 }

 return 1;
}
