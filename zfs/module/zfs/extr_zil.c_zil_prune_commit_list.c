
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zl_itx_commit_list; int zl_lock; TYPE_2__* zl_last_lwb_opened; int zl_issuer_lock; } ;
typedef TYPE_1__ zilog_t ;
struct TYPE_11__ {scalar_t__ lwb_state; } ;
typedef TYPE_2__ lwb_t ;
struct TYPE_12__ {scalar_t__ lrc_txtype; } ;
typedef TYPE_3__ lr_t ;
struct TYPE_13__ {TYPE_3__ itx_lr; int * itx_private; } ;
typedef TYPE_4__ itx_t ;


 int ASSERT (int ) ;
 int IMPLY (int ,int) ;
 scalar_t__ LWB_STATE_FLUSH_DONE ;
 int MUTEX_HELD (int *) ;
 scalar_t__ TX_COMMIT ;
 TYPE_4__* list_head (int *) ;
 int list_remove (int *,TYPE_4__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zil_commit_waiter_link_lwb (int *,TYPE_2__*) ;
 int zil_commit_waiter_skip (int *) ;
 int zil_itx_destroy (TYPE_4__*) ;

__attribute__((used)) static void
zil_prune_commit_list(zilog_t *zilog)
{
 itx_t *itx;

 ASSERT(MUTEX_HELD(&zilog->zl_issuer_lock));

 while ((itx = list_head(&zilog->zl_itx_commit_list)) != ((void*)0)) {
  lr_t *lrc = &itx->itx_lr;
  if (lrc->lrc_txtype != TX_COMMIT)
   break;

  mutex_enter(&zilog->zl_lock);

  lwb_t *last_lwb = zilog->zl_last_lwb_opened;
  if (last_lwb == ((void*)0) ||
      last_lwb->lwb_state == LWB_STATE_FLUSH_DONE) {






   zil_commit_waiter_skip(itx->itx_private);
  } else {
   zil_commit_waiter_link_lwb(itx->itx_private, last_lwb);
   itx->itx_private = ((void*)0);
  }

  mutex_exit(&zilog->zl_lock);

  list_remove(&zilog->zl_itx_commit_list, itx);
  zil_itx_destroy(itx);
 }

 IMPLY(itx != ((void*)0), itx->itx_lr.lrc_txtype != TX_COMMIT);
}
