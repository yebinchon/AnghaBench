
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vib_object; } ;
typedef TYPE_1__ vdev_indirect_births_t ;
typedef int uint64_t ;


 int ASSERT (int ) ;
 int vdev_indirect_births_verify (TYPE_1__*) ;

uint64_t
vdev_indirect_births_object(vdev_indirect_births_t *vib)
{
 ASSERT(vdev_indirect_births_verify(vib));

 return (vib->vib_object);
}
