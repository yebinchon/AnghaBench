
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int (* sa_update_cb ) (TYPE_2__*,int *) ;scalar_t__ sa_need_attr_registration; } ;
typedef TYPE_1__ sa_os_t ;
struct TYPE_12__ {int * sa_spill; int * sa_spill_tab; TYPE_4__* sa_os; int sa_lock; } ;
typedef TYPE_2__ sa_handle_t ;
typedef int sa_bulk_attr_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;
typedef int dmu_buf_t ;
struct TYPE_13__ {TYPE_1__* os_sa; } ;


 int ASSERT (TYPE_2__*) ;
 int IS_SA_BONUSTYPE (int ) ;
 TYPE_2__* MUTEX_HELD (int *) ;
 int SA_BONUS ;
 int SA_BONUSTYPE_FROM_DB (int ) ;
 int SA_GET_DB (TYPE_2__*,int ) ;
 int SA_UPDATE ;
 int dmu_buf_rele (int *,int *) ;
 int sa_attr_op (TYPE_2__*,int *,int,int ,int *) ;
 int sa_attr_register_sync (TYPE_2__*,int *) ;
 int sa_idx_tab_rele (TYPE_4__*,int *) ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int
sa_bulk_update_impl(sa_handle_t *hdl, sa_bulk_attr_t *bulk, int count,
    dmu_tx_t *tx)
{
 int error;
 sa_os_t *sa = hdl->sa_os->os_sa;
 dmu_object_type_t bonustype;
 dmu_buf_t *saved_spill;

 ASSERT(hdl);
 ASSERT(MUTEX_HELD(&hdl->sa_lock));

 bonustype = SA_BONUSTYPE_FROM_DB(SA_GET_DB(hdl, SA_BONUS));
 saved_spill = hdl->sa_spill;


 if (sa->sa_need_attr_registration)
  sa_attr_register_sync(hdl, tx);

 error = sa_attr_op(hdl, bulk, count, SA_UPDATE, tx);
 if (error == 0 && !IS_SA_BONUSTYPE(bonustype) && sa->sa_update_cb)
  sa->sa_update_cb(hdl, tx);
 if (!saved_spill && hdl->sa_spill) {
  if (hdl->sa_spill_tab) {
   sa_idx_tab_rele(hdl->sa_os, hdl->sa_spill_tab);
   hdl->sa_spill_tab = ((void*)0);
  }

  dmu_buf_rele(hdl->sa_spill, ((void*)0));
  hdl->sa_spill = ((void*)0);
 }

 return (error);
}
