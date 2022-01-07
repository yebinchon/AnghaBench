
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vie {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct mmio_rb_range {scalar_t__ mr_base; scalar_t__ mr_end; TYPE_1__ mr_param; } ;


 int ESRCH ;
 int MEM_F_IMMUTABLE ;
 int assert (int ) ;
 int mem_read ;
 int mem_write ;
 struct mmio_rb_range** mmio_hint ;
 int mmio_rb_fallback ;
 scalar_t__ mmio_rb_lookup (int *,scalar_t__,struct mmio_rb_range**) ;
 int mmio_rb_root ;
 int mmio_rwlock ;
 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int xh_vm_emulate_instruction (int,scalar_t__,struct vie*,struct vm_guest_paging*,int ,int ,TYPE_1__*) ;

int
emulate_mem(int vcpu, uint64_t paddr, struct vie *vie,
 struct vm_guest_paging *paging)

{
 struct mmio_rb_range *entry;
 int err, immutable;

 pthread_rwlock_rdlock(&mmio_rwlock);



 if (mmio_hint[vcpu] &&
     paddr >= mmio_hint[vcpu]->mr_base &&
     paddr <= mmio_hint[vcpu]->mr_end) {
  entry = mmio_hint[vcpu];
 } else
  entry = ((void*)0);

 if (entry == ((void*)0)) {
  if (mmio_rb_lookup(&mmio_rb_root, paddr, &entry) == 0) {

   mmio_hint[vcpu] = entry;
  } else if (mmio_rb_lookup(&mmio_rb_fallback, paddr, &entry)) {
   pthread_rwlock_unlock(&mmio_rwlock);
   return (ESRCH);
  }
 }

 assert(entry != ((void*)0));
 immutable = (entry->mr_param.flags & MEM_F_IMMUTABLE);
 if (immutable)
  pthread_rwlock_unlock(&mmio_rwlock);

 err = xh_vm_emulate_instruction(vcpu, paddr, vie, paging, mem_read,
  mem_write, &entry->mr_param);

 if (!immutable)
  pthread_rwlock_unlock(&mmio_rwlock);

 return (err);
}
