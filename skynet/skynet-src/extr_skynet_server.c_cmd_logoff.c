
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct skynet_context {int * logfile; } ;
typedef int FILE ;


 scalar_t__ ATOM_CAS_POINTER (int **,int *,int *) ;
 int skynet_context_release (struct skynet_context*) ;
 struct skynet_context* skynet_handle_grab (scalar_t__) ;
 int skynet_log_close (struct skynet_context*,int *,scalar_t__) ;
 scalar_t__ tohandle (struct skynet_context*,char const*) ;

__attribute__((used)) static const char *
cmd_logoff(struct skynet_context * context, const char * param) {
 uint32_t handle = tohandle(context, param);
 if (handle == 0)
  return ((void*)0);
 struct skynet_context * ctx = skynet_handle_grab(handle);
 if (ctx == ((void*)0))
  return ((void*)0);
 FILE * f = ctx->logfile;
 if (f) {

  if (ATOM_CAS_POINTER(&ctx->logfile, f, ((void*)0))) {
   skynet_log_close(context, f, handle);
  }
 }
 skynet_context_release(ctx);
 return ((void*)0);
}
