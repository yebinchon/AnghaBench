
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int range_tree_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 scalar_t__ range_tree_space (int *) ;

boolean_t
range_tree_is_empty(range_tree_t *rt)
{
 ASSERT(rt != ((void*)0));
 return (range_tree_space(rt) == 0);
}
