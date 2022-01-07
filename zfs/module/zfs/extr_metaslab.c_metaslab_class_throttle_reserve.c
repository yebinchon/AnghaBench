
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int io_flags; } ;
typedef TYPE_1__ zio_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__* mc_alloc_max_slots; int mc_lock; int * mc_alloc_slots; int mc_alloc_throttle_enabled; } ;
typedef TYPE_2__ metaslab_class_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ GANG_ALLOCATION (int) ;
 int METASLAB_MUST_RESERVE ;
 int ZIO_FLAG_IO_ALLOCATING ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zfs_refcount_add (int *,TYPE_1__*) ;
 scalar_t__ zfs_refcount_count (int *) ;

boolean_t
metaslab_class_throttle_reserve(metaslab_class_t *mc, int slots, int allocator,
    zio_t *zio, int flags)
{
 uint64_t available_slots = 0;
 boolean_t slot_reserved = B_FALSE;
 uint64_t max = mc->mc_alloc_max_slots[allocator];

 ASSERT(mc->mc_alloc_throttle_enabled);
 mutex_enter(&mc->mc_lock);

 uint64_t reserved_slots =
     zfs_refcount_count(&mc->mc_alloc_slots[allocator]);
 if (reserved_slots < max)
  available_slots = max - reserved_slots;

 if (slots <= available_slots || GANG_ALLOCATION(flags) ||
     flags & METASLAB_MUST_RESERVE) {




  for (int d = 0; d < slots; d++) {
   reserved_slots =
       zfs_refcount_add(&mc->mc_alloc_slots[allocator],
       zio);
  }
  zio->io_flags |= ZIO_FLAG_IO_ALLOCATING;
  slot_reserved = B_TRUE;
 }

 mutex_exit(&mc->mc_lock);
 return (slot_reserved);
}
