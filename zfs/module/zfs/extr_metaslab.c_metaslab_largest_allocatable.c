
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_btree_t ;
typedef scalar_t__ uint64_t ;
typedef int range_seg_t ;
struct TYPE_3__ {int ms_allocatable; int ms_allocatable_by_size; } ;
typedef TYPE_1__ metaslab_t ;


 int metaslab_size_tree_full_load (int ) ;
 scalar_t__ rs_get_end (int *,int ) ;
 scalar_t__ rs_get_start (int *,int ) ;
 int * zfs_btree_last (int *,int *) ;
 scalar_t__ zfs_btree_numnodes (int *) ;

uint64_t
metaslab_largest_allocatable(metaslab_t *msp)
{
 zfs_btree_t *t = &msp->ms_allocatable_by_size;
 range_seg_t *rs;

 if (t == ((void*)0))
  return (0);
 if (zfs_btree_numnodes(t) == 0)
  metaslab_size_tree_full_load(msp->ms_allocatable);

 rs = zfs_btree_last(t, ((void*)0));
 if (rs == ((void*)0))
  return (0);

 return (rs_get_end(rs, msp->ms_allocatable) - rs_get_start(rs,
     msp->ms_allocatable));
}
