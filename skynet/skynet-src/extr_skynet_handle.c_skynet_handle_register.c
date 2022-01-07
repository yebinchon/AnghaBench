
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
struct handle_storage {int handle_index; int slot_size; int harbor; struct skynet_context** slot; int lock; } ;


 struct handle_storage* H ;
 int HANDLE_MASK ;
 int assert (int) ;
 int memset (struct skynet_context**,int ,int) ;
 int rwlock_wlock (int *) ;
 int rwlock_wunlock (int *) ;
 int skynet_context_handle (struct skynet_context*) ;
 int skynet_free (struct skynet_context**) ;
 struct skynet_context** skynet_malloc (int) ;

uint32_t
skynet_handle_register(struct skynet_context *ctx) {
 struct handle_storage *s = H;

 rwlock_wlock(&s->lock);

 for (;;) {
  int i;
  uint32_t handle = s->handle_index;
  for (i=0;i<s->slot_size;i++,handle++) {
   if (handle > HANDLE_MASK) {

    handle = 1;
   }
   int hash = handle & (s->slot_size-1);
   if (s->slot[hash] == ((void*)0)) {
    s->slot[hash] = ctx;
    s->handle_index = handle + 1;

    rwlock_wunlock(&s->lock);

    handle |= s->harbor;
    return handle;
   }
  }
  assert((s->slot_size*2 - 1) <= HANDLE_MASK);
  struct skynet_context ** new_slot = skynet_malloc(s->slot_size * 2 * sizeof(struct skynet_context *));
  memset(new_slot, 0, s->slot_size * 2 * sizeof(struct skynet_context *));
  for (i=0;i<s->slot_size;i++) {
   int hash = skynet_context_handle(s->slot[i]) & (s->slot_size * 2 - 1);
   assert(new_slot[hash] == ((void*)0));
   new_slot[hash] = s->slot[i];
  }
  skynet_free(s->slot);
  s->slot = new_slot;
  s->slot_size *= 2;
 }
}
