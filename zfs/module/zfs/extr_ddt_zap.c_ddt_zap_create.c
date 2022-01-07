
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_flags_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int DMU_OT_DDT_ZAP ;
 int DMU_OT_NONE ;
 int ENOTSUP ;
 int ZAP_FLAG_HASH64 ;
 int ZAP_FLAG_PRE_HASHED_KEY ;
 int ZAP_FLAG_UINT64_KEY ;
 int ddt_zap_indirect_blockshift ;
 int ddt_zap_leaf_blockshift ;
 scalar_t__ zap_create_flags (int *,int ,int,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
ddt_zap_create(objset_t *os, uint64_t *objectp, dmu_tx_t *tx, boolean_t prehash)
{
 zap_flags_t flags = ZAP_FLAG_HASH64 | ZAP_FLAG_UINT64_KEY;

 if (prehash)
  flags |= ZAP_FLAG_PRE_HASHED_KEY;

 *objectp = zap_create_flags(os, 0, flags, DMU_OT_DDT_ZAP,
     ddt_zap_leaf_blockshift, ddt_zap_indirect_blockshift,
     DMU_OT_NONE, 0, tx);

 return (*objectp == 0 ? ENOTSUP : 0);
}
