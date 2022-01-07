
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_node {struct timer_node* next; } ;
struct timer_event {int handle; int session; } ;
struct skynet_message {size_t sz; int * data; int session; scalar_t__ source; } ;


 size_t MESSAGE_TYPE_SHIFT ;
 scalar_t__ PTYPE_RESPONSE ;
 int skynet_context_push (int ,struct skynet_message*) ;
 int skynet_free (struct timer_node*) ;

__attribute__((used)) static inline void
dispatch_list(struct timer_node *current) {
 do {
  struct timer_event * event = (struct timer_event *)(current+1);
  struct skynet_message message;
  message.source = 0;
  message.session = event->session;
  message.data = ((void*)0);
  message.sz = (size_t)PTYPE_RESPONSE << MESSAGE_TYPE_SHIFT;

  skynet_context_push(event->handle, &message);

  struct timer_node * temp = current;
  current=current->next;
  skynet_free(temp);
 } while (current);
}
