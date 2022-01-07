
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
struct handle_storage {int slot_size; int lock; struct skynet_context** slot; } ;


 struct handle_storage* H ;
 int rwlock_rlock (int *) ;
 int rwlock_runlock (int *) ;
 int skynet_context_grab (struct skynet_context*) ;
 int skynet_context_handle (struct skynet_context*) ;

struct skynet_context *
skynet_handle_grab(uint32_t handle) {
 struct handle_storage *s = H;
 struct skynet_context * result = ((void*)0);

 rwlock_rlock(&s->lock);

 uint32_t hash = handle & (s->slot_size-1);
 struct skynet_context * ctx = s->slot[hash];
 if (ctx && skynet_context_handle(ctx) == handle) {
  result = ctx;
  skynet_context_grab(result);
 }

 rwlock_runlock(&s->lock);

 return result;
}
