
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;


 int handle_exit (struct skynet_context*,scalar_t__) ;
 scalar_t__ tohandle (struct skynet_context*,char const*) ;

__attribute__((used)) static const char *
cmd_kill(struct skynet_context * context, const char * param) {
 uint32_t handle = tohandle(context, param);
 if (handle) {
  handle_exit(context, handle);
 }
 return ((void*)0);
}
