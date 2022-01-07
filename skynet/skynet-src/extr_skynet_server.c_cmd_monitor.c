
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct skynet_context {char const* result; } ;
struct TYPE_2__ {int monitor_exit; } ;


 TYPE_1__ G_NODE ;
 int sprintf (char const*,char*,int) ;
 int tohandle (struct skynet_context*,char const*) ;

__attribute__((used)) static const char *
cmd_monitor(struct skynet_context * context, const char * param) {
 uint32_t handle=0;
 if (param == ((void*)0) || param[0] == '\0') {
  if (G_NODE.monitor_exit) {

   sprintf(context->result, ":%x", G_NODE.monitor_exit);
   return context->result;
  }
  return ((void*)0);
 } else {
  handle = tohandle(context, param);
 }
 G_NODE.monitor_exit = handle;
 return ((void*)0);
}
