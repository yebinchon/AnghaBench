
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTreeGroup ;


 int MAX_HTREE_GROUPS ;
 scalar_t__ WebPSafeMalloc (int,int) ;
 int assert (int) ;

HTreeGroup* VP8LHtreeGroupsNew(int num_htree_groups) {
  HTreeGroup* const htree_groups =
      (HTreeGroup*)WebPSafeMalloc(num_htree_groups, sizeof(*htree_groups));
  if (htree_groups == ((void*)0)) {
    return ((void*)0);
  }
  assert(num_htree_groups <= MAX_HTREE_GROUPS);
  return htree_groups;
}
