
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
struct handle_storage {int slot_size; int harbor; int handle_index; int name_cap; void* name; scalar_t__ name_count; int lock; void* slot; } ;
struct handle_name {int dummy; } ;


 int DEFAULT_SLOT_SIZE ;
 struct handle_storage* H ;
 int HANDLE_REMOTE_SHIFT ;
 int assert (int ) ;
 int memset (void*,int ,int) ;
 int rwlock_init (int *) ;
 void* skynet_malloc (int) ;

void
skynet_handle_init(int harbor) {
 assert(H==((void*)0));
 struct handle_storage * s = skynet_malloc(sizeof(*H));
 s->slot_size = DEFAULT_SLOT_SIZE;
 s->slot = skynet_malloc(s->slot_size * sizeof(struct skynet_context *));
 memset(s->slot, 0, s->slot_size * sizeof(struct skynet_context *));

 rwlock_init(&s->lock);

 s->harbor = (uint32_t) (harbor & 0xff) << HANDLE_REMOTE_SHIFT;
 s->handle_index = 1;
 s->name_cap = 2;
 s->name_count = 0;
 s->name = skynet_malloc(s->name_cap * sizeof(struct handle_name));

 H = s;


}
