
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sa_num_attrs; TYPE_1__* sa_attr_table; scalar_t__ sa_reg_attr_obj; int sa_need_attr_registration; } ;
typedef TYPE_2__ sa_os_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {int sa_name; int sa_registered; } ;


 int B_TRUE ;
 scalar_t__ DMU_NEW_OBJECT ;
 int dmu_tx_hold_zap (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void
dmu_tx_sa_registration_hold(sa_os_t *sa, dmu_tx_t *tx)
{
 if (!sa->sa_need_attr_registration)
  return;

 for (int i = 0; i != sa->sa_num_attrs; i++) {
  if (!sa->sa_attr_table[i].sa_registered) {
   if (sa->sa_reg_attr_obj)
    dmu_tx_hold_zap(tx, sa->sa_reg_attr_obj,
        B_TRUE, sa->sa_attr_table[i].sa_name);
   else
    dmu_tx_hold_zap(tx, DMU_NEW_OBJECT,
        B_TRUE, sa->sa_attr_table[i].sa_name);
  }
 }
}
