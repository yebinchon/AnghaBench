
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {char const* result; } ;


 int skynet_handle_findname (char const*) ;
 int sprintf (char const*,char*,int) ;

__attribute__((used)) static const char *
cmd_query(struct skynet_context * context, const char * param) {
 if (param[0] == '.') {
  uint32_t handle = skynet_handle_findname(param+1);
  if (handle) {
   sprintf(context->result, ":%x", handle);
   return context->result;
  }
 }
 return ((void*)0);
}
