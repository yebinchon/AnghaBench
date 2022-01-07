
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_lock; int * sa_spill; int * sa_bonus; scalar_t__ sa_spill_tab; int sa_os; scalar_t__ sa_bonus_tab; int sa_dbu; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int dmu_buf_t ;


 int dmu_buf_rele (int *,int *) ;
 int dmu_buf_remove_user (int *,int *) ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_cache ;
 int sa_idx_tab_rele (int ,scalar_t__) ;

void
sa_handle_destroy(sa_handle_t *hdl)
{
 dmu_buf_t *db = hdl->sa_bonus;

 mutex_enter(&hdl->sa_lock);
 (void) dmu_buf_remove_user(db, &hdl->sa_dbu);

 if (hdl->sa_bonus_tab)
  sa_idx_tab_rele(hdl->sa_os, hdl->sa_bonus_tab);

 if (hdl->sa_spill_tab)
  sa_idx_tab_rele(hdl->sa_os, hdl->sa_spill_tab);

 dmu_buf_rele(hdl->sa_bonus, ((void*)0));

 if (hdl->sa_spill)
  dmu_buf_rele(hdl->sa_spill, ((void*)0));
 mutex_exit(&hdl->sa_lock);

 kmem_cache_free(sa_cache, hdl);
}
