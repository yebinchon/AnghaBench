
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtree_node_elm_t ;



__attribute__((used)) static bool
rtree_node_valid(rtree_node_elm_t *node) {
 return ((uintptr_t)node != (uintptr_t)0);
}
