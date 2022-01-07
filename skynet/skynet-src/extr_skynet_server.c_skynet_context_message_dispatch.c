
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_monitor {int dummy; } ;
struct skynet_message {int data; int source; } ;
struct skynet_context {struct message_queue* queue; int * cb; } ;
struct message_queue {int dummy; } ;
struct drop_t {int member_0; } ;


 int assert (int) ;
 int dispatch_message (struct skynet_context*,struct skynet_message*) ;
 int drop_message ;
 int skynet_context_release (struct skynet_context*) ;
 int skynet_error (struct skynet_context*,char*,int) ;
 int skynet_free (int ) ;
 struct message_queue* skynet_globalmq_pop () ;
 int skynet_globalmq_push (struct message_queue*) ;
 struct skynet_context* skynet_handle_grab (int ) ;
 int skynet_monitor_trigger (struct skynet_monitor*,int ,int ) ;
 int skynet_mq_handle (struct message_queue*) ;
 int skynet_mq_length (struct message_queue*) ;
 int skynet_mq_overload (struct message_queue*) ;
 scalar_t__ skynet_mq_pop (struct message_queue*,struct skynet_message*) ;
 int skynet_mq_release (struct message_queue*,int ,struct drop_t*) ;

struct message_queue *
skynet_context_message_dispatch(struct skynet_monitor *sm, struct message_queue *q, int weight) {
 if (q == ((void*)0)) {
  q = skynet_globalmq_pop();
  if (q==((void*)0))
   return ((void*)0);
 }

 uint32_t handle = skynet_mq_handle(q);

 struct skynet_context * ctx = skynet_handle_grab(handle);
 if (ctx == ((void*)0)) {
  struct drop_t d = { handle };
  skynet_mq_release(q, drop_message, &d);
  return skynet_globalmq_pop();
 }

 int i,n=1;
 struct skynet_message msg;

 for (i=0;i<n;i++) {
  if (skynet_mq_pop(q,&msg)) {
   skynet_context_release(ctx);
   return skynet_globalmq_pop();
  } else if (i==0 && weight >= 0) {
   n = skynet_mq_length(q);
   n >>= weight;
  }
  int overload = skynet_mq_overload(q);
  if (overload) {
   skynet_error(ctx, "May overload, message queue length = %d", overload);
  }

  skynet_monitor_trigger(sm, msg.source , handle);

  if (ctx->cb == ((void*)0)) {
   skynet_free(msg.data);
  } else {
   dispatch_message(ctx, &msg);
  }

  skynet_monitor_trigger(sm, 0,0);
 }

 assert(q == ctx->queue);
 struct message_queue *nq = skynet_globalmq_pop();
 if (nq) {


  skynet_globalmq_push(q);
  q = nq;
 }
 skynet_context_release(ctx);

 return q;
}
