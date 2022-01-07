
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
typedef int prof_tdata_t ;
struct TYPE_4__ {int nlimbo; int lock; int bt; int tctxs; } ;
typedef TYPE_1__ prof_gctx_t ;


 int assert (int) ;
 int bt2gctx ;
 int cassert (int ) ;
 scalar_t__ ckh_remove (int *,int *,int *,int *,int *) ;
 int config_prof ;
 int idalloctm (int ,TYPE_1__*,int *,int *,int,int) ;
 int malloc_mutex_lock (int ,int ) ;
 int malloc_mutex_unlock (int ,int ) ;
 int not_reached () ;
 int prof_enter (int *,int *) ;
 int prof_leave (int *,int *) ;
 scalar_t__ tctx_tree_empty (int *) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_gctx_try_destroy(tsd_t *tsd, prof_tdata_t *tdata_self, prof_gctx_t *gctx,
    prof_tdata_t *tdata) {
 cassert(config_prof);
 prof_enter(tsd, tdata_self);
 malloc_mutex_lock(tsd_tsdn(tsd), gctx->lock);
 assert(gctx->nlimbo != 0);
 if (tctx_tree_empty(&gctx->tctxs) && gctx->nlimbo == 1) {

  if (ckh_remove(tsd, &bt2gctx, &gctx->bt, ((void*)0), ((void*)0))) {
   not_reached();
  }
  prof_leave(tsd, tdata_self);

  malloc_mutex_unlock(tsd_tsdn(tsd), gctx->lock);
  idalloctm(tsd_tsdn(tsd), gctx, ((void*)0), ((void*)0), 1, 1);
 } else {




  gctx->nlimbo--;
  malloc_mutex_unlock(tsd_tsdn(tsd), gctx->lock);
  prof_leave(tsd, tdata_self);
 }
}
