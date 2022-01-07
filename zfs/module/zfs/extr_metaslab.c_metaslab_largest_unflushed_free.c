
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int range_seg_t ;
struct TYPE_3__ {int ms_freed; int * ms_defer; int * ms_unflushed_frees; int ms_unflushed_frees_by_size; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int TXG_DEFER_SIZE ;
 int metaslab_size_tree_full_load (int *) ;
 scalar_t__ range_tree_find_in (int ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ rs_get_end (int *,int *) ;
 scalar_t__ rs_get_start (int *,int *) ;
 int * zfs_btree_last (int *,int *) ;
 scalar_t__ zfs_btree_numnodes (int *) ;

uint64_t
metaslab_largest_unflushed_free(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));

 if (msp->ms_unflushed_frees == ((void*)0))
  return (0);

 if (zfs_btree_numnodes(&msp->ms_unflushed_frees_by_size) == 0)
  metaslab_size_tree_full_load(msp->ms_unflushed_frees);
 range_seg_t *rs = zfs_btree_last(&msp->ms_unflushed_frees_by_size,
     ((void*)0));
 if (rs == ((void*)0))
  return (0);
 uint64_t rstart = rs_get_start(rs, msp->ms_unflushed_frees);
 uint64_t rsize = rs_get_end(rs, msp->ms_unflushed_frees) - rstart;
 for (int t = 0; t < TXG_DEFER_SIZE; t++) {
  uint64_t start = 0;
  uint64_t size = 0;
  boolean_t found = range_tree_find_in(msp->ms_defer[t], rstart,
      rsize, &start, &size);
  if (found) {
   if (rstart == start)
    return (0);
   rsize = start - rstart;
  }
 }

 uint64_t start = 0;
 uint64_t size = 0;
 boolean_t found = range_tree_find_in(msp->ms_freed, rstart,
     rsize, &start, &size);
 if (found)
  rsize = start - rstart;

 return (rsize);
}
