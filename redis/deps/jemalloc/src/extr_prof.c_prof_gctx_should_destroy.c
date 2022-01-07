
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nlimbo; int tctxs; } ;
typedef TYPE_1__ prof_gctx_t ;


 scalar_t__ opt_prof_accum ;
 int tctx_tree_empty (int *) ;

__attribute__((used)) static bool
prof_gctx_should_destroy(prof_gctx_t *gctx) {
 if (opt_prof_accum) {
  return 0;
 }
 if (!tctx_tree_empty(&gctx->tctxs)) {
  return 0;
 }
 if (gctx->nlimbo != 0) {
  return 0;
 }
 return 1;
}
