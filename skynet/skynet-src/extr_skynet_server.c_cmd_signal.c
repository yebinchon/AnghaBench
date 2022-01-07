
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct skynet_context {int instance; int mod; } ;


 int skynet_context_release (struct skynet_context*) ;
 struct skynet_context* skynet_handle_grab (scalar_t__) ;
 int skynet_module_instance_signal (int ,int ,int) ;
 char* strchr (char const*,char) ;
 int strtol (char const*,int *,int ) ;
 scalar_t__ tohandle (struct skynet_context*,char const*) ;

__attribute__((used)) static const char *
cmd_signal(struct skynet_context * context, const char * param) {
 uint32_t handle = tohandle(context, param);
 if (handle == 0)
  return ((void*)0);
 struct skynet_context * ctx = skynet_handle_grab(handle);
 if (ctx == ((void*)0))
  return ((void*)0);
 param = strchr(param, ' ');
 int sig = 0;
 if (param) {
  sig = strtol(param, ((void*)0), 0);
 }

 skynet_module_instance_signal(ctx->mod, ctx->instance, sig);

 skynet_context_release(ctx);
 return ((void*)0);
}
