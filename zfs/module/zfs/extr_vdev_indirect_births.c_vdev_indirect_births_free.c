
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int VERIFY0 (int ) ;
 int dmu_object_free (int *,int ,int *) ;

void
vdev_indirect_births_free(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
 VERIFY0(dmu_object_free(os, object, tx));
}
