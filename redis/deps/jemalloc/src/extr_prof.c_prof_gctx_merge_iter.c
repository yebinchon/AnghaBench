
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct prof_gctx_merge_iter_arg_s {scalar_t__ tsdn; int leak_ngctx; } ;
typedef int prof_gctx_tree_t ;
struct TYPE_5__ {scalar_t__ curobjs; } ;
struct TYPE_6__ {int lock; TYPE_1__ cnt_summed; int tctxs; } ;
typedef TYPE_2__ prof_gctx_t ;


 int malloc_mutex_lock (scalar_t__,int ) ;
 int malloc_mutex_unlock (scalar_t__,int ) ;
 int prof_tctx_merge_iter ;
 int tctx_tree_iter (int *,int *,int ,void*) ;

__attribute__((used)) static prof_gctx_t *
prof_gctx_merge_iter(prof_gctx_tree_t *gctxs, prof_gctx_t *gctx, void *opaque) {
 struct prof_gctx_merge_iter_arg_s *arg =
     (struct prof_gctx_merge_iter_arg_s *)opaque;

 malloc_mutex_lock(arg->tsdn, gctx->lock);
 tctx_tree_iter(&gctx->tctxs, ((void*)0), prof_tctx_merge_iter,
     (void *)arg->tsdn);
 if (gctx->cnt_summed.curobjs != 0) {
  arg->leak_ngctx++;
 }
 malloc_mutex_unlock(arg->tsdn, gctx->lock);

 return ((void*)0);
}
