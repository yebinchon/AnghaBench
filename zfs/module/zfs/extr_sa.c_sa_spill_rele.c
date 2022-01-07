
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sa_lock; int * sa_spill_tab; int * sa_spill; int sa_os; } ;
typedef TYPE_1__ sa_handle_t ;


 int dmu_buf_rele (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_idx_tab_rele (int ,int *) ;

void
sa_spill_rele(sa_handle_t *hdl)
{
 mutex_enter(&hdl->sa_lock);
 if (hdl->sa_spill) {
  sa_idx_tab_rele(hdl->sa_os, hdl->sa_spill_tab);
  dmu_buf_rele(hdl->sa_spill, ((void*)0));
  hdl->sa_spill = ((void*)0);
  hdl->sa_spill_tab = ((void*)0);
 }
 mutex_exit(&hdl->sa_lock);
}
