
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_message {int dummy; } ;
struct message_queue {int dummy; } ;
typedef int (* message_drop ) (struct skynet_message*,void*) ;


 int _release (struct message_queue*) ;
 int skynet_mq_pop (struct message_queue*,struct skynet_message*) ;

__attribute__((used)) static void
_drop_queue(struct message_queue *q, message_drop drop_func, void *ud) {
 struct skynet_message msg;
 while(!skynet_mq_pop(q, &msg)) {
  drop_func(&msg, ud);
 }
 _release(q);
}
