
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {scalar_t__ sa_master_obj; scalar_t__ sa_reg_attr_obj; int sa_num_attrs; int sa_lock; scalar_t__ sa_need_attr_registration; TYPE_3__* sa_attr_table; } ;
typedef TYPE_1__ sa_os_t ;
struct TYPE_8__ {TYPE_4__* sa_os; } ;
typedef TYPE_2__ sa_handle_t ;
struct TYPE_9__ {scalar_t__ sa_registered; int sa_name; int sa_byteswap; int sa_length; int sa_attr; } ;
typedef TYPE_3__ sa_attr_table_t ;
typedef int dmu_tx_t ;
struct TYPE_10__ {TYPE_1__* os_sa; } ;


 int ATTR_ENCODE (int ,int ,int ,int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_OT_SA_ATTR_REGISTRATION ;
 int SA_REGISTRY ;
 int VERIFY (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zap_create_link (TYPE_4__*,int ,scalar_t__,int ,int *) ;
 scalar_t__ zap_update (TYPE_4__*,scalar_t__,int ,int,int,int *,int *) ;

__attribute__((used)) static void
sa_attr_register_sync(sa_handle_t *hdl, dmu_tx_t *tx)
{
 uint64_t attr_value = 0;
 sa_os_t *sa = hdl->sa_os->os_sa;
 sa_attr_table_t *tb = sa->sa_attr_table;
 int i;

 mutex_enter(&sa->sa_lock);

 if (!sa->sa_need_attr_registration || sa->sa_master_obj == 0) {
  mutex_exit(&sa->sa_lock);
  return;
 }

 if (sa->sa_reg_attr_obj == 0) {
  sa->sa_reg_attr_obj = zap_create_link(hdl->sa_os,
      DMU_OT_SA_ATTR_REGISTRATION,
      sa->sa_master_obj, SA_REGISTRY, tx);
 }
 for (i = 0; i != sa->sa_num_attrs; i++) {
  if (sa->sa_attr_table[i].sa_registered)
   continue;
  ATTR_ENCODE(attr_value, tb[i].sa_attr, tb[i].sa_length,
      tb[i].sa_byteswap);
  VERIFY(0 == zap_update(hdl->sa_os, sa->sa_reg_attr_obj,
      tb[i].sa_name, 8, 1, &attr_value, tx));
  tb[i].sa_registered = B_TRUE;
 }
 sa->sa_need_attr_registration = B_FALSE;
 mutex_exit(&sa->sa_lock);
}
