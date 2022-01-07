
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ve_lastused; } ;
typedef TYPE_1__ vdev_cache_entry_t ;


 int TREE_CMP (int ,int ) ;
 scalar_t__ likely (int) ;
 int vdev_cache_offset_compare (void const*,void const*) ;

__attribute__((used)) static int
vdev_cache_lastused_compare(const void *a1, const void *a2)
{
 const vdev_cache_entry_t *ve1 = (const vdev_cache_entry_t *)a1;
 const vdev_cache_entry_t *ve2 = (const vdev_cache_entry_t *)a2;

 int cmp = TREE_CMP(ve1->ve_lastused, ve2->ve_lastused);
 if (likely(cmp))
  return (cmp);




 return (vdev_cache_offset_compare(a1, a2));
}
