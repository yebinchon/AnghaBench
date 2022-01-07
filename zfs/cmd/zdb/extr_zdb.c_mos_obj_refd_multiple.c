
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int * mos_refd_objs ;
 int range_tree_add (int *,scalar_t__,int) ;
 int range_tree_contains (int *,scalar_t__,int) ;

__attribute__((used)) static void
mos_obj_refd_multiple(uint64_t obj)
{
 if (obj != 0 && mos_refd_objs != ((void*)0) &&
     !range_tree_contains(mos_refd_objs, obj, 1))
  range_tree_add(mos_refd_objs, obj, 1);
}
