
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
struct command_func {char const* (* func ) (struct skynet_context*,char const*) ;scalar_t__ name; } ;


 struct command_func* cmd_funcs ;
 scalar_t__ strcmp (char const*,scalar_t__) ;
 char const* stub1 (struct skynet_context*,char const*) ;

const char *
skynet_command(struct skynet_context * context, const char * cmd , const char * param) {
 struct command_func * method = &cmd_funcs[0];
 while(method->name) {
  if (strcmp(cmd, method->name) == 0) {
   return method->func(context, param);
  }
  ++method;
 }

 return ((void*)0);
}
