
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int imbalance; struct TYPE_10__* pUp; struct TYPE_10__* pAfter; struct TYPE_10__* pBefore; } ;
typedef TYPE_1__ amatch_avl ;


 TYPE_1__** amatchAvlFromPtr (TYPE_1__*,TYPE_1__**) ;
 int amatchAvlRecomputeHeight (TYPE_1__*) ;
 void* amatchAvlRotateAfter (TYPE_1__*) ;
 void* amatchAvlRotateBefore (TYPE_1__*) ;

__attribute__((used)) static amatch_avl *amatchAvlBalance(amatch_avl *p){
  amatch_avl *pTop = p;
  amatch_avl **pp;
  while( p ){
    amatchAvlRecomputeHeight(p);
    if( p->imbalance>=2 ){
      amatch_avl *pB = p->pBefore;
      if( pB->imbalance<0 ) p->pBefore = amatchAvlRotateAfter(pB);
      pp = amatchAvlFromPtr(p,&p);
      p = *pp = amatchAvlRotateBefore(p);
    }else if( p->imbalance<=(-2) ){
      amatch_avl *pA = p->pAfter;
      if( pA->imbalance>0 ) p->pAfter = amatchAvlRotateBefore(pA);
      pp = amatchAvlFromPtr(p,&p);
      p = *pp = amatchAvlRotateAfter(p);
    }
    pTop = p;
    p = p->pUp;
  }
  return pTop;
}
