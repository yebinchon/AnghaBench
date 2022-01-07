
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rCostX; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ fuzzer_stem ;



__attribute__((used)) static fuzzer_stem *fuzzerMergeStems(fuzzer_stem *pA, fuzzer_stem *pB){
  fuzzer_stem head;
  fuzzer_stem *pTail;

  pTail = &head;
  while( pA && pB ){
    if( pA->rCostX<=pB->rCostX ){
      pTail->pNext = pA;
      pTail = pA;
      pA = pA->pNext;
    }else{
      pTail->pNext = pB;
      pTail = pB;
      pB = pB->pNext;
    }
  }
  if( pA==0 ){
    pTail->pNext = pB;
  }else{
    pTail->pNext = pA;
  }
  return head.pNext;
}
