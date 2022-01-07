
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;


 int DMU_OT_NONE ;
 int DMU_OT_ZAP_OTHER ;
 int VERIFY (int) ;
 int ZTEST_DIROBJ ;
 scalar_t__ zap_create_claim (int *,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
ztest_objset_create_cb(objset_t *os, void *arg, cred_t *cr, dmu_tx_t *tx)
{



 VERIFY(zap_create_claim(os, ZTEST_DIROBJ,
     DMU_OT_ZAP_OTHER, DMU_OT_NONE, 0, tx) == 0);
}
