
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_btree_t ;
struct TYPE_4__ {int rt_type; } ;
typedef TYPE_1__ range_tree_t ;
typedef int range_seg64_t ;
typedef int range_seg32_t ;
struct TYPE_5__ {int mra_floor_shift; int * mra_bt; } ;
typedef TYPE_2__ metaslab_rt_arg_t ;




 int metaslab_by_size_min_shift ;
 int metaslab_rangesize32_compare (void const*,void const*) ;
 int metaslab_rangesize64_compare (void const*,void const*) ;
 int panic (char*,int) ;
 int zfs_btree_create (int *,int (*) (void const*,void const*),size_t) ;

__attribute__((used)) static void
metaslab_rt_create(range_tree_t *rt, void *arg)
{
 metaslab_rt_arg_t *mrap = arg;
 zfs_btree_t *size_tree = mrap->mra_bt;

 size_t size;
 int (*compare) (const void *, const void *);
 switch (rt->rt_type) {
 case 129:
  size = sizeof (range_seg32_t);
  compare = metaslab_rangesize32_compare;
  break;
 case 128:
  size = sizeof (range_seg64_t);
  compare = metaslab_rangesize64_compare;
  break;
 default:
  panic("Invalid range seg type %d", rt->rt_type);
 }
 zfs_btree_create(size_tree, compare, size);
 mrap->mra_floor_shift = metaslab_by_size_min_shift;
}
