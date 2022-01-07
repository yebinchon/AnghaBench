
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_t ;
typedef int rtree_leaf_elm_t ;


 int free (int *) ;
 int rtree_leaf_dalloc_orig (int *,int *,int *) ;
 int test_rtree ;

__attribute__((used)) static void
rtree_leaf_dalloc_intercept(tsdn_t *tsdn, rtree_t *rtree,
    rtree_leaf_elm_t *leaf) {
 if (rtree != &test_rtree) {
  rtree_leaf_dalloc_orig(tsdn, rtree, leaf);
  return;
 }

 free(leaf);
}
