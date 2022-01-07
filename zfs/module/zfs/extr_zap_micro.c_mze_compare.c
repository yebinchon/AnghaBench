
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mze_cd; int mze_hash; } ;
typedef TYPE_1__ mzap_ent_t ;


 int TREE_CMP (int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
mze_compare(const void *arg1, const void *arg2)
{
 const mzap_ent_t *mze1 = arg1;
 const mzap_ent_t *mze2 = arg2;

 int cmp = TREE_CMP(mze1->mze_hash, mze2->mze_hash);
 if (likely(cmp))
  return (cmp);

 return (TREE_CMP(mze1->mze_cd, mze2->mze_cd));
}
