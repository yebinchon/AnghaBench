
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {char const* result; int handle; } ;


 int skynet_error (struct skynet_context*,char*,char const*) ;
 char const* skynet_handle_namehandle (int,char const*) ;
 int sprintf (char const*,char*,int) ;

__attribute__((used)) static const char *
cmd_reg(struct skynet_context * context, const char * param) {
 if (param == ((void*)0) || param[0] == '\0') {
  sprintf(context->result, ":%x", context->handle);
  return context->result;
 } else if (param[0] == '.') {
  return skynet_handle_namehandle(context->handle, param + 1);
 } else {
  skynet_error(context, "Can't register global name %s in C", param);
  return ((void*)0);
 }
}
