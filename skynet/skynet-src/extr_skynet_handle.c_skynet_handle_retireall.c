
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;
struct handle_storage {int slot_size; int lock; struct skynet_context** slot; } ;


 struct handle_storage* H ;
 int rwlock_rlock (int *) ;
 int rwlock_runlock (int *) ;
 scalar_t__ skynet_context_handle (struct skynet_context*) ;
 scalar_t__ skynet_handle_retire (scalar_t__) ;

void
skynet_handle_retireall() {
 struct handle_storage *s = H;
 for (;;) {
  int n=0;
  int i;
  for (i=0;i<s->slot_size;i++) {
   rwlock_rlock(&s->lock);
   struct skynet_context * ctx = s->slot[i];
   uint32_t handle = 0;
   if (ctx)
    handle = skynet_context_handle(ctx);
   rwlock_runlock(&s->lock);
   if (handle != 0) {
    if (skynet_handle_retire(handle)) {
     ++n;
    }
   }
  }
  if (n==0)
   return;
 }
}
