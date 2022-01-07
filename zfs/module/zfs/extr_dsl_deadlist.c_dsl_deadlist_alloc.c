
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dsl_deadlist_phys_t ;
typedef int dmu_tx_t ;


 int DMU_OT_DEADLIST ;
 int DMU_OT_DEADLIST_HDR ;
 int SPA_OLD_MAXBLOCKSIZE ;
 scalar_t__ SPA_VERSION_DEADLISTS ;
 int bpobj_alloc (int *,int ,int *) ;
 int dmu_objset_spa (int *) ;
 scalar_t__ spa_version (int ) ;
 int zap_create (int *,int ,int ,int,int *) ;

uint64_t
dsl_deadlist_alloc(objset_t *os, dmu_tx_t *tx)
{
 if (spa_version(dmu_objset_spa(os)) < SPA_VERSION_DEADLISTS)
  return (bpobj_alloc(os, SPA_OLD_MAXBLOCKSIZE, tx));
 return (zap_create(os, DMU_OT_DEADLIST, DMU_OT_DEADLIST_HDR,
     sizeof (dsl_deadlist_phys_t), tx));
}
