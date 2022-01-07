
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timer_event {int session; int handle; } ;
struct skynet_message {int session; size_t sz; int * data; scalar_t__ source; } ;
typedef int event ;


 size_t MESSAGE_TYPE_SHIFT ;
 scalar_t__ PTYPE_RESPONSE ;
 int TI ;
 scalar_t__ skynet_context_push (int ,struct skynet_message*) ;
 int timer_add (int ,struct timer_event*,int,int) ;

int
skynet_timeout(uint32_t handle, int time, int session) {
 if (time <= 0) {
  struct skynet_message message;
  message.source = 0;
  message.session = session;
  message.data = ((void*)0);
  message.sz = (size_t)PTYPE_RESPONSE << MESSAGE_TYPE_SHIFT;

  if (skynet_context_push(handle, &message)) {
   return -1;
  }
 } else {
  struct timer_event event;
  event.handle = handle;
  event.session = session;
  timer_add(TI, &event, sizeof(event), time);
 }

 return session;
}
