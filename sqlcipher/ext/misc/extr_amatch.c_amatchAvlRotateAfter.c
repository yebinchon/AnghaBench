
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pUp; struct TYPE_5__* pAfter; struct TYPE_5__* pBefore; } ;
typedef TYPE_1__ amatch_avl ;


 int amatchAvlRecomputeHeight (TYPE_1__*) ;

__attribute__((used)) static amatch_avl *amatchAvlRotateAfter(amatch_avl *pP){
  amatch_avl *pA = pP->pAfter;
  amatch_avl *pY = pA->pBefore;
  pA->pUp = pP->pUp;
  pA->pBefore = pP;
  pP->pUp = pA;
  pP->pAfter = pY;
  if( pY ) pY->pUp = pP;
  amatchAvlRecomputeHeight(pP);
  amatchAvlRecomputeHeight(pA);
  return pA;
}
