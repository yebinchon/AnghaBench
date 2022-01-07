
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_5__ {int init_lock; } ;
typedef TYPE_1__ rtree_t ;
typedef int rtree_node_elm_t ;
typedef int atomic_p_t ;
struct TYPE_6__ {int bits; } ;


 int ATOMIC_RELAXED ;
 int ATOMIC_RELEASE ;
 int ZU (int) ;
 int * atomic_load_p (int *,int ) ;
 int atomic_store_p (int *,int *,int ) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 TYPE_4__* rtree_levels ;
 int * rtree_node_alloc (int *,TYPE_1__*,int) ;

__attribute__((used)) static rtree_node_elm_t *
rtree_node_init(tsdn_t *tsdn, rtree_t *rtree, unsigned level,
    atomic_p_t *elmp) {
 malloc_mutex_lock(tsdn, &rtree->init_lock);




 rtree_node_elm_t *node = atomic_load_p(elmp, ATOMIC_RELAXED);
 if (node == ((void*)0)) {
  node = rtree_node_alloc(tsdn, rtree, ZU(1) <<
      rtree_levels[level].bits);
  if (node == ((void*)0)) {
   malloc_mutex_unlock(tsdn, &rtree->init_lock);
   return ((void*)0);
  }




  atomic_store_p(elmp, node, ATOMIC_RELEASE);
 }
 malloc_mutex_unlock(tsdn, &rtree->init_lock);

 return node;
}
