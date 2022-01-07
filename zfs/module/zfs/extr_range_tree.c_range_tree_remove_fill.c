
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int range_tree_t ;


 int B_TRUE ;
 int range_tree_remove_impl (int *,int ,int ,int ) ;

void
range_tree_remove_fill(range_tree_t *rt, uint64_t start, uint64_t size)
{
 range_tree_remove_impl(rt, start, size, B_TRUE);
}
