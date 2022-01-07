
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;
typedef int zfs_btree_index_t ;
typedef scalar_t__ uint64_t ;
typedef int range_tree_t ;
typedef int range_seg_t ;
typedef int range_seg_max_t ;


 int rs_set_end (int *,int *,scalar_t__) ;
 int rs_set_start (int *,int *,scalar_t__) ;
 int * zfs_btree_find (int *,int *,int *) ;
 int * zfs_btree_next (int *,int *,int *) ;

__attribute__((used)) static range_seg_t *
metaslab_block_find(zfs_btree_t *t, range_tree_t *rt, uint64_t start,
    uint64_t size, zfs_btree_index_t *where)
{
 range_seg_t *rs;
 range_seg_max_t rsearch;

 rs_set_start(&rsearch, rt, start);
 rs_set_end(&rsearch, rt, start + size);

 rs = zfs_btree_find(t, &rsearch, where);
 if (rs == ((void*)0)) {
  rs = zfs_btree_next(t, where, where);
 }

 return (rs);
}
