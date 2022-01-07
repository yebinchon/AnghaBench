
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsd_t ;
typedef int prof_tdata_t ;
typedef int prof_tctx_t ;
typedef int prof_gctx_tree_t ;
struct TYPE_6__ {int lock; int nlimbo; int tctxs; } ;
typedef TYPE_1__ prof_gctx_t ;


 TYPE_1__* gctx_tree_first (int *) ;
 int gctx_tree_remove (int *,TYPE_1__*) ;
 int idalloctm (scalar_t__,int *,int *,int *,int,int) ;
 int malloc_mutex_lock (scalar_t__,int ) ;
 int malloc_mutex_unlock (scalar_t__,int ) ;
 scalar_t__ prof_gctx_should_destroy (TYPE_1__*) ;
 int prof_gctx_try_destroy (int *,int *,TYPE_1__*,int *) ;
 int prof_tctx_finish_iter ;
 int * prof_tdata_get (int *,int) ;
 int * tctx_tree_iter (int *,int *,int ,void*) ;
 int * tctx_tree_next (int *,int *) ;
 int tctx_tree_remove (int *,int *) ;
 scalar_t__ tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_gctx_finish(tsd_t *tsd, prof_gctx_tree_t *gctxs) {
 prof_tdata_t *tdata = prof_tdata_get(tsd, 0);
 prof_gctx_t *gctx;







 while ((gctx = gctx_tree_first(gctxs)) != ((void*)0)) {
  gctx_tree_remove(gctxs, gctx);
  malloc_mutex_lock(tsd_tsdn(tsd), gctx->lock);
  {
   prof_tctx_t *next;

   next = ((void*)0);
   do {
    prof_tctx_t *to_destroy =
        tctx_tree_iter(&gctx->tctxs, next,
        prof_tctx_finish_iter,
        (void *)tsd_tsdn(tsd));
    if (to_destroy != ((void*)0)) {
     next = tctx_tree_next(&gctx->tctxs,
         to_destroy);
     tctx_tree_remove(&gctx->tctxs,
         to_destroy);
     idalloctm(tsd_tsdn(tsd), to_destroy,
         ((void*)0), ((void*)0), 1, 1);
    } else {
     next = ((void*)0);
    }
   } while (next != ((void*)0));
  }
  gctx->nlimbo--;
  if (prof_gctx_should_destroy(gctx)) {
   gctx->nlimbo++;
   malloc_mutex_unlock(tsd_tsdn(tsd), gctx->lock);
   prof_gctx_try_destroy(tsd, tdata, gctx, tdata);
  } else {
   malloc_mutex_unlock(tsd_tsdn(tsd), gctx->lock);
  }
 }
}
