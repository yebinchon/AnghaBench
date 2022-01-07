
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_5__ {scalar_t__ numSons; scalar_t__ hashSizeSum; int hash; } ;
typedef TYPE_1__ CMatchFinder ;


 int MatchFinder_GetSubValue (TYPE_1__*) ;
 int MatchFinder_Normalize3 (int ,int ,scalar_t__) ;
 int MatchFinder_ReduceOffsets (TYPE_1__*,int ) ;

__attribute__((used)) static void MatchFinder_Normalize(CMatchFinder *p)
{
  UInt32 subValue = MatchFinder_GetSubValue(p);
  MatchFinder_Normalize3(subValue, p->hash, p->hashSizeSum + p->numSons);
  MatchFinder_ReduceOffsets(p, subValue);
}
