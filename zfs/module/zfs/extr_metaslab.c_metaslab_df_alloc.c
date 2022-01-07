
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zfs_btree_index_t ;
typedef int uint64_t ;
struct TYPE_12__ {TYPE_3__* rt_arg; } ;
typedef TYPE_1__ range_tree_t ;
typedef int range_seg_t ;
struct TYPE_13__ {int* ms_lbas; int ms_size; int ms_start; int ms_allocatable_by_size; TYPE_1__* ms_allocatable; int ms_lock; } ;
typedef TYPE_2__ metaslab_t ;
struct TYPE_14__ {int mra_floor_shift; } ;
typedef TYPE_3__ metaslab_rt_arg_t ;


 int ASSERT (int ) ;
 int METASLABSTAT_BUMP (int ) ;
 int MUTEX_HELD (int *) ;
 int highbit64 (int) ;
 int * metaslab_block_find (int *,TYPE_1__*,int ,int,int *) ;
 int metaslab_block_picker (TYPE_1__*,int*,int,int ) ;
 scalar_t__ metaslab_df_alloc_threshold ;
 int metaslab_df_free_pct ;
 int metaslab_df_max_search ;
 scalar_t__ metaslab_df_use_largest_segment ;
 scalar_t__ metaslab_largest_allocatable (TYPE_2__*) ;
 int metaslab_size_tree_full_load (TYPE_1__*) ;
 int metaslabstat_df_find_under_floor ;
 int range_tree_space (TYPE_1__*) ;
 int rs_get_end (int *,TYPE_1__*) ;
 int rs_get_start (int *,TYPE_1__*) ;
 int * zfs_btree_last (int *,int *) ;
 scalar_t__ zfs_btree_numnodes (int *) ;

__attribute__((used)) static uint64_t
metaslab_df_alloc(metaslab_t *msp, uint64_t size)
{







 uint64_t align = size & -size;
 uint64_t *cursor = &msp->ms_lbas[highbit64(align) - 1];
 range_tree_t *rt = msp->ms_allocatable;
 int free_pct = range_tree_space(rt) * 100 / msp->ms_size;
 uint64_t offset;

 ASSERT(MUTEX_HELD(&msp->ms_lock));





 if (metaslab_largest_allocatable(msp) < metaslab_df_alloc_threshold ||
     free_pct < metaslab_df_free_pct) {
  offset = -1;
 } else {
  offset = metaslab_block_picker(rt,
      cursor, size, metaslab_df_max_search);
 }

 if (offset == -1) {
  range_seg_t *rs;
  if (zfs_btree_numnodes(&msp->ms_allocatable_by_size) == 0)
   metaslab_size_tree_full_load(msp->ms_allocatable);
  if (metaslab_df_use_largest_segment) {

   rs = zfs_btree_last(&msp->ms_allocatable_by_size, ((void*)0));
  } else {
   zfs_btree_index_t where;
   rs = metaslab_block_find(&msp->ms_allocatable_by_size,
       rt, msp->ms_start, size, &where);
  }
  if (rs != ((void*)0) && rs_get_start(rs, rt) + size <= rs_get_end(rs,
      rt)) {
   offset = rs_get_start(rs, rt);
   *cursor = offset + size;
  }
 }

 return (offset);
}
