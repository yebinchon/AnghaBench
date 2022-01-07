
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_var {scalar_t__ value_ref; } ;
struct format_context {int bufpos; int buf; } ;


 int string_format_from (int ,int *,char*,unsigned long) ;

__attribute__((used)) static bool
argv_number_formatter(struct format_context *format, struct format_var *var)
{
 unsigned long value = *(unsigned long *) var->value_ref;

 return string_format_from(format->buf, &format->bufpos, "%ld", value);
}
