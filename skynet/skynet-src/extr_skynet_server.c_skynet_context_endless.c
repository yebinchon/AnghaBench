
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int endless; } ;


 int skynet_context_release (struct skynet_context*) ;
 struct skynet_context* skynet_handle_grab (int ) ;

void
skynet_context_endless(uint32_t handle) {
 struct skynet_context * ctx = skynet_handle_grab(handle);
 if (ctx == ((void*)0)) {
  return;
 }
 ctx->endless = 1;
 skynet_context_release(ctx);
}
