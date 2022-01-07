
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int range_tree_t ;
typedef int range_seg_t ;


 int panic (char*,void*) ;
 int * range_tree_find (int *,int ,int ) ;

void
range_tree_verify_not_present(range_tree_t *rt, uint64_t off, uint64_t size)
{
 range_seg_t *rs = range_tree_find(rt, off, size);
 if (rs != ((void*)0))
  panic("segment already in tree; rs=%p", (void *)rs);
}
