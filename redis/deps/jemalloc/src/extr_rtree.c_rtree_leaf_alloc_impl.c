
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int rtree_t ;
typedef int rtree_leaf_elm_t ;


 int CACHELINE ;
 int b0get () ;
 scalar_t__ base_alloc (int *,int ,size_t,int ) ;

__attribute__((used)) static rtree_leaf_elm_t *
rtree_leaf_alloc_impl(tsdn_t *tsdn, rtree_t *rtree, size_t nelms) {
 return (rtree_leaf_elm_t *)base_alloc(tsdn, b0get(), nelms *
     sizeof(rtree_leaf_elm_t), CACHELINE);
}
