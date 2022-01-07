
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int prof_tctx_t ;
typedef int extent_t ;


 int extent_prof_tctx_set (int *,int *) ;

void
large_prof_tctx_set(tsdn_t *tsdn, extent_t *extent, prof_tctx_t *tctx) {
 extent_prof_tctx_set(extent, tctx);
}
