
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pUp; struct TYPE_5__* pBefore; struct TYPE_5__* pAfter; } ;
typedef TYPE_1__ closure_avl ;


 int closureAvlRecomputeHeight (TYPE_1__*) ;

__attribute__((used)) static closure_avl *closureAvlRotateBefore(closure_avl *pP){
  closure_avl *pB = pP->pBefore;
  closure_avl *pY = pB->pAfter;
  pB->pUp = pP->pUp;
  pB->pAfter = pP;
  pP->pUp = pB;
  pP->pBefore = pY;
  if( pY ) pY->pUp = pP;
  closureAvlRecomputeHeight(pP);
  closureAvlRecomputeHeight(pB);
  return pB;
}
