
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_btree_t ;
struct TYPE_3__ {int rt_type; int rt_btree_compare; } ;
typedef TYPE_1__ range_tree_t ;
typedef int range_seg_gap_t ;
typedef int range_seg64_t ;
typedef int range_seg32_t ;





 int panic (char*,int) ;
 int zfs_btree_create (int *,int ,size_t) ;

void
rt_btree_create(range_tree_t *rt, void *arg)
{
 zfs_btree_t *size_tree = arg;

 size_t size;
 switch (rt->rt_type) {
 case 130:
  size = sizeof (range_seg32_t);
  break;
 case 129:
  size = sizeof (range_seg64_t);
  break;
 case 128:
  size = sizeof (range_seg_gap_t);
  break;
 default:
  panic("Invalid range seg type %d", rt->rt_type);
 }
 zfs_btree_create(size_tree, rt->rt_btree_compare, size);
}
