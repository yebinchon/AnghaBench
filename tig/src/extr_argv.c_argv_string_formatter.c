
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_var {char** value_ref; char* value_if_empty; } ;
struct format_context {int bufpos; int buf; } ;
typedef char* argv_string ;


 int string_format_from (int ,int *,char*,char const*) ;

__attribute__((used)) static bool
argv_string_formatter(struct format_context *format, struct format_var *var)
{
 argv_string *value_ref = var->value_ref;
 const char *value = *value_ref;

 if (!*value)
  value = var->value_if_empty;

 if (!*value)
  return 1;

 return string_format_from(format->buf, &format->bufpos, "%s", value);
}
