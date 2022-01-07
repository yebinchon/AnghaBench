
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ve_offset; } ;
typedef TYPE_1__ vdev_cache_entry_t ;


 int TREE_CMP (int ,int ) ;

__attribute__((used)) static inline int
vdev_cache_offset_compare(const void *a1, const void *a2)
{
 const vdev_cache_entry_t *ve1 = (const vdev_cache_entry_t *)a1;
 const vdev_cache_entry_t *ve2 = (const vdev_cache_entry_t *)a2;

 return (TREE_CMP(ve1->ve_offset, ve2->ve_offset));
}
