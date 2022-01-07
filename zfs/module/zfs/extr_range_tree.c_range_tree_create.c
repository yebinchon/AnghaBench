
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int range_tree_t ;
typedef int range_tree_ops_t ;
typedef int range_seg_type_t ;


 int * range_tree_create_impl (int *,int ,void*,int ,int ,int *,int ) ;

range_tree_t *
range_tree_create(range_tree_ops_t *ops, range_seg_type_t type,
    void *arg, uint64_t start, uint64_t shift)
{
 return (range_tree_create_impl(ops, type, arg, start, shift, ((void*)0), 0));
}
