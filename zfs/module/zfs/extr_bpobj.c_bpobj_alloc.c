
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int bpobj_phys_t ;


 int BPOBJ_SIZE_V0 ;
 int BPOBJ_SIZE_V1 ;
 int BPOBJ_SIZE_V2 ;
 int DMU_OT_BPOBJ ;
 int DMU_OT_BPOBJ_HDR ;
 int SPA_FEATURE_LIVELIST ;
 scalar_t__ SPA_VERSION_BPOBJ_ACCOUNT ;
 scalar_t__ SPA_VERSION_DEADLISTS ;
 int dmu_object_alloc (int *,int ,int,int ,int,int *) ;
 int dmu_objset_spa (int *) ;
 int spa_feature_is_active (int ,int ) ;
 scalar_t__ spa_version (int ) ;

uint64_t
bpobj_alloc(objset_t *os, int blocksize, dmu_tx_t *tx)
{
 int size;

 if (spa_version(dmu_objset_spa(os)) < SPA_VERSION_BPOBJ_ACCOUNT)
  size = BPOBJ_SIZE_V0;
 else if (spa_version(dmu_objset_spa(os)) < SPA_VERSION_DEADLISTS)
  size = BPOBJ_SIZE_V1;
 else if (!spa_feature_is_active(dmu_objset_spa(os),
     SPA_FEATURE_LIVELIST))
  size = BPOBJ_SIZE_V2;
 else
  size = sizeof (bpobj_phys_t);

 return (dmu_object_alloc(os, DMU_OT_BPOBJ, blocksize,
     DMU_OT_BPOBJ_HDR, size, tx));
}
