
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct skynet_context {int dummy; } ;
struct handle_storage {int slot_size; int name_count; int lock; TYPE_1__* name; struct skynet_context** slot; } ;
struct TYPE_2__ {int handle; int name; } ;


 struct handle_storage* H ;
 int rwlock_wlock (int *) ;
 int rwlock_wunlock (int *) ;
 int skynet_context_handle (struct skynet_context*) ;
 int skynet_context_release (struct skynet_context*) ;
 int skynet_free (int ) ;

int
skynet_handle_retire(uint32_t handle) {
 int ret = 0;
 struct handle_storage *s = H;

 rwlock_wlock(&s->lock);

 uint32_t hash = handle & (s->slot_size-1);
 struct skynet_context * ctx = s->slot[hash];

 if (ctx != ((void*)0) && skynet_context_handle(ctx) == handle) {
  s->slot[hash] = ((void*)0);
  ret = 1;
  int i;
  int j=0, n=s->name_count;
  for (i=0; i<n; ++i) {
   if (s->name[i].handle == handle) {
    skynet_free(s->name[i].name);
    continue;
   } else if (i!=j) {
    s->name[j] = s->name[i];
   }
   ++j;
  }
  s->name_count = j;
 } else {
  ctx = ((void*)0);
 }

 rwlock_wunlock(&s->lock);

 if (ctx) {

  skynet_context_release(ctx);
 }

 return ret;
}
