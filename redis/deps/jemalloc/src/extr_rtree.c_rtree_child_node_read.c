
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_t ;
struct TYPE_8__ {int child; } ;
typedef TYPE_1__ rtree_node_elm_t ;


 int assert (int) ;
 TYPE_1__* rtree_child_node_tryread (TYPE_1__*,int) ;
 TYPE_1__* rtree_node_init (int *,int *,unsigned int,int *) ;
 int rtree_node_valid (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static rtree_node_elm_t *
rtree_child_node_read(tsdn_t *tsdn, rtree_t *rtree, rtree_node_elm_t *elm,
    unsigned level, bool dependent) {
 rtree_node_elm_t *node;

 node = rtree_child_node_tryread(elm, dependent);
 if (!dependent && unlikely(!rtree_node_valid(node))) {
  node = rtree_node_init(tsdn, rtree, level + 1, &elm->child);
 }
 assert(!dependent || node != ((void*)0));
 return node;
}
