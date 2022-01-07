
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pUp; struct TYPE_5__* pBefore; struct TYPE_5__* pAfter; } ;
typedef TYPE_1__ amatch_avl ;


 int amatchAvlRecomputeHeight (TYPE_1__*) ;

__attribute__((used)) static amatch_avl *amatchAvlRotateBefore(amatch_avl *pP){
  amatch_avl *pB = pP->pBefore;
  amatch_avl *pY = pB->pAfter;
  pB->pUp = pP->pUp;
  pB->pAfter = pP;
  pP->pUp = pB;
  pP->pBefore = pY;
  if( pY ) pY->pUp = pP;
  amatchAvlRecomputeHeight(pP);
  amatchAvlRecomputeHeight(pB);
  return pB;
}
