
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_t ;
typedef int rtree_node_elm_t ;


 int free (int *) ;
 int rtree_node_dalloc_orig (int *,int *,int *) ;
 int test_rtree ;

__attribute__((used)) static void
rtree_node_dalloc_intercept(tsdn_t *tsdn, rtree_t *rtree,
    rtree_node_elm_t *node) {
 if (rtree != &test_rtree) {
  rtree_node_dalloc_orig(tsdn, rtree, node);
  return;
 }

 free(node);
}
