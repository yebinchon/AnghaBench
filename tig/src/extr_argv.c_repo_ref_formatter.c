
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_var {int dummy; } ;
struct format_context {int dummy; } ;


 int argv_string_formatter (struct format_context*,struct format_var*) ;

__attribute__((used)) static bool
repo_ref_formatter(struct format_context *format, struct format_var *var)
{
 return argv_string_formatter(format, var);
}
