
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sr_offset; } ;
typedef TYPE_1__ space_ref_t ;


 int TREE_CMP (int ,int ) ;
 int TREE_PCMP (TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
space_reftree_compare(const void *x1, const void *x2)
{
 const space_ref_t *sr1 = (const space_ref_t *)x1;
 const space_ref_t *sr2 = (const space_ref_t *)x2;

 int cmp = TREE_CMP(sr1->sr_offset, sr2->sr_offset);
 if (likely(cmp))
  return (cmp);

 return (TREE_PCMP(sr1, sr2));
}
