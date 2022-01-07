
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vim_object; } ;
typedef TYPE_1__ vdev_indirect_mapping_t ;
typedef int uint64_t ;


 int ASSERT (int ) ;
 int vdev_indirect_mapping_verify (TYPE_1__*) ;

uint64_t
vdev_indirect_mapping_object(vdev_indirect_mapping_t *vim)
{
 ASSERT(vdev_indirect_mapping_verify(vim));

 return (vim->vim_object);
}
