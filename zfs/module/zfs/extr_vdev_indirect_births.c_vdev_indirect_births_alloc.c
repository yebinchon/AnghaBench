
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_indirect_birth_phys_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int DMU_OTN_UINT64_METADATA ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int dmu_object_alloc (int *,int ,int ,int ,int,int *) ;
 int dmu_tx_is_syncing (int *) ;

uint64_t
vdev_indirect_births_alloc(objset_t *os, dmu_tx_t *tx)
{
 ASSERT(dmu_tx_is_syncing(tx));

 return (dmu_object_alloc(os,
     DMU_OTN_UINT64_METADATA, SPA_OLD_MAXBLOCKSIZE,
     DMU_OTN_UINT64_METADATA, sizeof (vdev_indirect_birth_phys_t),
     tx));
}
