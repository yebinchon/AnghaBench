
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pUp; struct TYPE_5__* pAfter; struct TYPE_5__* pBefore; } ;
typedef TYPE_1__ closure_avl ;


 int closureAvlRecomputeHeight (TYPE_1__*) ;

__attribute__((used)) static closure_avl *closureAvlRotateAfter(closure_avl *pP){
  closure_avl *pA = pP->pAfter;
  closure_avl *pY = pA->pBefore;
  pA->pUp = pP->pUp;
  pA->pBefore = pP;
  pP->pUp = pA;
  pP->pAfter = pY;
  if( pY ) pY->pUp = pP;
  closureAvlRecomputeHeight(pP);
  closureAvlRecomputeHeight(pA);
  return pA;
}
