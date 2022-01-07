
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int zl_stop_sync; int zl_cv_suspend; int zl_lock; int zl_issuer_lock; TYPE_1__* zl_itxg; int zl_itx_commit_list; int zl_lwb_list; int zl_suspending; int zl_suspend; } ;
typedef TYPE_2__ zilog_t ;
struct TYPE_5__ {int itxg_lock; scalar_t__ itxg_itxs; } ;


 int ASSERT (int ) ;
 int ASSERT0 (int ) ;
 int TXG_SIZE ;
 int cv_destroy (int *) ;
 int kmem_free (TYPE_2__*,int) ;
 int list_destroy (int *) ;
 int list_is_empty (int *) ;
 int mutex_destroy (int *) ;
 int zil_itxg_clean (scalar_t__) ;

void
zil_free(zilog_t *zilog)
{
 int i;

 zilog->zl_stop_sync = 1;

 ASSERT0(zilog->zl_suspend);
 ASSERT0(zilog->zl_suspending);

 ASSERT(list_is_empty(&zilog->zl_lwb_list));
 list_destroy(&zilog->zl_lwb_list);

 ASSERT(list_is_empty(&zilog->zl_itx_commit_list));
 list_destroy(&zilog->zl_itx_commit_list);

 for (i = 0; i < TXG_SIZE; i++) {







  if (zilog->zl_itxg[i].itxg_itxs)
   zil_itxg_clean(zilog->zl_itxg[i].itxg_itxs);
  mutex_destroy(&zilog->zl_itxg[i].itxg_lock);
 }

 mutex_destroy(&zilog->zl_issuer_lock);
 mutex_destroy(&zilog->zl_lock);

 cv_destroy(&zilog->zl_cv_suspend);

 kmem_free(zilog, sizeof (zilog_t));
}
