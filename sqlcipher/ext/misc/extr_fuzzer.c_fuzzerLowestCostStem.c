
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rCostX; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ fuzzer_stem ;
struct TYPE_6__ {int mxQueue; TYPE_1__* pStem; TYPE_1__** aQueue; } ;
typedef TYPE_2__ fuzzer_cursor ;



__attribute__((used)) static fuzzer_stem *fuzzerLowestCostStem(fuzzer_cursor *pCur){
  fuzzer_stem *pBest, *pX;
  int iBest;
  int i;

  if( pCur->pStem==0 ){
    iBest = -1;
    pBest = 0;
    for(i=0; i<=pCur->mxQueue; i++){
      pX = pCur->aQueue[i];
      if( pX==0 ) continue;
      if( pBest==0 || pBest->rCostX>pX->rCostX ){
        pBest = pX;
        iBest = i;
      }
    }
    if( pBest ){
      pCur->aQueue[iBest] = pBest->pNext;
      pBest->pNext = 0;
      pCur->pStem = pBest;
    }
  }
  return pCur->pStem;
}
