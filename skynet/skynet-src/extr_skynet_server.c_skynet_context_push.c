
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_message {int dummy; } ;
struct skynet_context {int queue; } ;


 int skynet_context_release (struct skynet_context*) ;
 struct skynet_context* skynet_handle_grab (int ) ;
 int skynet_mq_push (int ,struct skynet_message*) ;

int
skynet_context_push(uint32_t handle, struct skynet_message *message) {
 struct skynet_context * ctx = skynet_handle_grab(handle);
 if (ctx == ((void*)0)) {
  return -1;
 }
 skynet_mq_push(ctx->queue, message);
 skynet_context_release(ctx);

 return 0;
}
