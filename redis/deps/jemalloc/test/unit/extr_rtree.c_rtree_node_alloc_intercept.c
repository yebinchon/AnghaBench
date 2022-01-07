
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_5__ {int init_lock; } ;
typedef TYPE_1__ rtree_t ;
typedef int rtree_node_elm_t ;


 int assert_ptr_not_null (int *,char*) ;
 scalar_t__ calloc (size_t,int) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int * rtree_node_alloc_orig (int *,TYPE_1__*,size_t) ;
 TYPE_1__ test_rtree ;

__attribute__((used)) static rtree_node_elm_t *
rtree_node_alloc_intercept(tsdn_t *tsdn, rtree_t *rtree, size_t nelms) {
 rtree_node_elm_t *node;

 if (rtree != &test_rtree) {
  return rtree_node_alloc_orig(tsdn, rtree, nelms);
 }

 malloc_mutex_unlock(tsdn, &rtree->init_lock);
 node = (rtree_node_elm_t *)calloc(nelms, sizeof(rtree_node_elm_t));
 assert_ptr_not_null(node, "Unexpected calloc() failure");
 malloc_mutex_lock(tsdn, &rtree->init_lock);

 return node;
}
