
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;
typedef int range_seg_t ;
typedef int range_seg_max_t ;


 int VERIFY (int) ;
 int rs_set_end (int *,TYPE_1__*,scalar_t__) ;
 int rs_set_start (int *,TYPE_1__*,scalar_t__) ;
 int * zfs_btree_find (int *,int *,int *) ;

__attribute__((used)) static range_seg_t *
range_tree_find_impl(range_tree_t *rt, uint64_t start, uint64_t size)
{
 range_seg_max_t rsearch;
 uint64_t end = start + size;

 VERIFY(size != 0);

 rs_set_start(&rsearch, rt, start);
 rs_set_end(&rsearch, rt, end);
 return (zfs_btree_find(&rt->rt_root, &rsearch, ((void*)0)));
}
