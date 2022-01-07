
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ sa_master_obj; scalar_t__ sa_layout_attr_obj; int sa_force_spill; } ;
typedef TYPE_1__ sa_os_t ;
struct TYPE_11__ {TYPE_8__* tx_objset; } ;
typedef TYPE_2__ dmu_tx_t ;
struct TYPE_12__ {TYPE_1__* os_sa; } ;


 int B_TRUE ;
 scalar_t__ DMU_NEW_OBJECT ;
 int DN_OLD_MAX_BONUSLEN ;
 int * SA_LAYOUTS ;
 int * SA_REGISTRY ;
 int THT_SPILL ;
 int dmu_tx_hold_bonus (TYPE_2__*,scalar_t__) ;
 int dmu_tx_hold_object_impl (TYPE_2__*,TYPE_8__*,scalar_t__,int ,int ,int ) ;
 int dmu_tx_hold_zap (TYPE_2__*,scalar_t__,int ,int *) ;
 int dmu_tx_sa_registration_hold (TYPE_1__*,TYPE_2__*) ;

void
dmu_tx_hold_sa_create(dmu_tx_t *tx, int attrsize)
{
 sa_os_t *sa = tx->tx_objset->os_sa;

 dmu_tx_hold_bonus(tx, DMU_NEW_OBJECT);

 if (tx->tx_objset->os_sa->sa_master_obj == 0)
  return;

 if (tx->tx_objset->os_sa->sa_layout_attr_obj) {
  dmu_tx_hold_zap(tx, sa->sa_layout_attr_obj, B_TRUE, ((void*)0));
 } else {
  dmu_tx_hold_zap(tx, sa->sa_master_obj, B_TRUE, SA_LAYOUTS);
  dmu_tx_hold_zap(tx, sa->sa_master_obj, B_TRUE, SA_REGISTRY);
  dmu_tx_hold_zap(tx, DMU_NEW_OBJECT, B_TRUE, ((void*)0));
  dmu_tx_hold_zap(tx, DMU_NEW_OBJECT, B_TRUE, ((void*)0));
 }

 dmu_tx_sa_registration_hold(sa, tx);

 if (attrsize <= DN_OLD_MAX_BONUSLEN && !sa->sa_force_spill)
  return;

 (void) dmu_tx_hold_object_impl(tx, tx->tx_objset, DMU_NEW_OBJECT,
     THT_SPILL, 0, 0);
}
