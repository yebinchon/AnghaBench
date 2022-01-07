
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_message {int dummy; } ;
struct skynet_context {struct message_queue* queue; } ;
struct message_queue {int dummy; } ;


 int dispatch_message (struct skynet_context*,struct skynet_message*) ;
 int skynet_mq_pop (struct message_queue*,struct skynet_message*) ;

void
skynet_context_dispatchall(struct skynet_context * ctx) {

 struct skynet_message msg;
 struct message_queue *q = ctx->queue;
 while (!skynet_mq_pop(q,&msg)) {
  dispatch_message(ctx, &msg);
 }
}
