
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef scalar_t__ szind_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;


 scalar_t__ NSIZES ;
 scalar_t__ extent_state_active ;
 scalar_t__ extent_state_get (int *) ;
 int extents_rtree ;
 scalar_t__ rtree_extent_szind_read (int *,int *,int *,uintptr_t,int,int **,scalar_t__*) ;
 size_t sz_index2size (scalar_t__) ;
 int * tsdn_rtree_ctx (int *,int *) ;

__attribute__((used)) static size_t
vsalloc(tsdn_t *tsdn, const void *ptr) {
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 extent_t *extent;
 szind_t szind;
 if (rtree_extent_szind_read(tsdn, &extents_rtree, rtree_ctx,
     (uintptr_t)ptr, 0, &extent, &szind)) {
  return 0;
 }

 if (extent == ((void*)0)) {
  return 0;
 }
 if (extent_state_get(extent) != extent_state_active) {
  return 0;
 }

 if (szind == NSIZES) {
  return 0;
 }

 return sz_index2size(szind);
}
