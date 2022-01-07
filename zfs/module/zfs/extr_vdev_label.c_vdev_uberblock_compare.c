
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int ub_txg; unsigned int ub_timestamp; } ;
typedef TYPE_1__ uberblock_t ;


 unsigned int MMP_SEQ (TYPE_1__ const*) ;
 scalar_t__ MMP_SEQ_VALID (TYPE_1__ const*) ;
 scalar_t__ MMP_VALID (TYPE_1__ const*) ;
 int TREE_CMP (unsigned int,unsigned int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
vdev_uberblock_compare(const uberblock_t *ub1, const uberblock_t *ub2)
{
 int cmp = TREE_CMP(ub1->ub_txg, ub2->ub_txg);

 if (likely(cmp))
  return (cmp);

 cmp = TREE_CMP(ub1->ub_timestamp, ub2->ub_timestamp);
 if (likely(cmp))
  return (cmp);
 unsigned int seq1 = 0;
 unsigned int seq2 = 0;

 if (MMP_VALID(ub1) && MMP_SEQ_VALID(ub1))
  seq1 = MMP_SEQ(ub1);

 if (MMP_VALID(ub2) && MMP_SEQ_VALID(ub2))
  seq2 = MMP_SEQ(ub2);

 return (TREE_CMP(seq1, seq2));
}
