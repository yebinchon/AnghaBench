
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int iFirst; scalar_t__ iLastPg; int nSize; scalar_t__ iRoot; } ;
typedef TYPE_1__ Segment ;


 int assert (int) ;
 void* ckptGobble64 (int *,int*) ;

__attribute__((used)) static void ckptNewSegment(
  u32 *aIn,
  int *piIn,
  Segment *pSegment
){
  assert( pSegment->iFirst==0 && pSegment->iLastPg==0 );
  assert( pSegment->nSize==0 && pSegment->iRoot==0 );
  pSegment->iFirst = ckptGobble64(aIn, piIn);
  pSegment->iLastPg = ckptGobble64(aIn, piIn);
  pSegment->iRoot = ckptGobble64(aIn, piIn);
  pSegment->nSize = (int)ckptGobble64(aIn, piIn);
  assert( pSegment->iFirst );
}
