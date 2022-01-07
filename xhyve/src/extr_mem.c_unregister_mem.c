
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range {scalar_t__ base; scalar_t__ name; scalar_t__ size; int flags; } ;
struct mmio_rb_range {struct mem_range mr_param; } ;


 int MEM_F_IMMUTABLE ;
 int RB_REMOVE (int ,int *,struct mmio_rb_range*) ;
 int VM_MAXCPU ;
 int assert (int) ;
 int free (struct mmio_rb_range*) ;
 struct mmio_rb_range** mmio_hint ;
 int mmio_rb_lookup (int *,scalar_t__,struct mmio_rb_range**) ;
 int mmio_rb_root ;
 int mmio_rb_tree ;
 int mmio_rwlock ;
 int pthread_rwlock_unlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;

int
unregister_mem(struct mem_range *memp)
{
 struct mem_range *mr;
 struct mmio_rb_range *entry = ((void*)0);
 int err, i;

 pthread_rwlock_wrlock(&mmio_rwlock);
 err = mmio_rb_lookup(&mmio_rb_root, memp->base, &entry);
 if (err == 0) {
  mr = &entry->mr_param;
  assert(mr->name == memp->name);
  assert(mr->base == memp->base && mr->size == memp->size);
  assert((mr->flags & MEM_F_IMMUTABLE) == 0);
  RB_REMOVE(mmio_rb_tree, &mmio_rb_root, entry);


  for (i=0; i < VM_MAXCPU; i++) {
   if (mmio_hint[i] == entry)
    mmio_hint[i] = ((void*)0);
  }
 }
 pthread_rwlock_unlock(&mmio_rwlock);

 if (entry)
  free(entry);

 return (err);
}
