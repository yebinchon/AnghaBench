
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_message {int session; size_t sz; void* data; int source; } ;
struct skynet_context {int queue; } ;


 size_t MESSAGE_TYPE_SHIFT ;
 int skynet_mq_push (int ,struct skynet_message*) ;

void
skynet_context_send(struct skynet_context * ctx, void * msg, size_t sz, uint32_t source, int type, int session) {
 struct skynet_message smsg;
 smsg.source = source;
 smsg.session = session;
 smsg.data = msg;
 smsg.sz = sz | (size_t)type << MESSAGE_TYPE_SHIFT;

 skynet_mq_push(ctx->queue, &smsg);
}
