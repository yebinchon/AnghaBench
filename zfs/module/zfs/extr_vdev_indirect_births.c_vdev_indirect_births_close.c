
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* vib_phys; int * vib_dbuf; scalar_t__ vib_object; int * vib_objset; int * vib_entries; } ;
typedef TYPE_2__ vdev_indirect_births_t ;
typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ vib_count; } ;


 int ASSERT (int ) ;
 int dmu_buf_rele (int *,TYPE_2__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int vdev_indirect_births_size_impl (TYPE_2__*) ;
 int vdev_indirect_births_verify (TYPE_2__*) ;
 int vmem_free (int *,int ) ;

void
vdev_indirect_births_close(vdev_indirect_births_t *vib)
{
 ASSERT(vdev_indirect_births_verify(vib));

 if (vib->vib_phys->vib_count > 0) {
  uint64_t births_size = vdev_indirect_births_size_impl(vib);

  vmem_free(vib->vib_entries, births_size);
  vib->vib_entries = ((void*)0);
 }

 dmu_buf_rele(vib->vib_dbuf, vib);

 vib->vib_objset = ((void*)0);
 vib->vib_object = 0;
 vib->vib_dbuf = ((void*)0);
 vib->vib_phys = ((void*)0);

 kmem_free(vib, sizeof (*vib));
}
