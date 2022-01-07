
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int imbalance; struct TYPE_10__* pUp; struct TYPE_10__* pAfter; struct TYPE_10__* pBefore; } ;
typedef TYPE_1__ closure_avl ;


 TYPE_1__** closureAvlFromPtr (TYPE_1__*,TYPE_1__**) ;
 int closureAvlRecomputeHeight (TYPE_1__*) ;
 void* closureAvlRotateAfter (TYPE_1__*) ;
 void* closureAvlRotateBefore (TYPE_1__*) ;

__attribute__((used)) static closure_avl *closureAvlBalance(closure_avl *p){
  closure_avl *pTop = p;
  closure_avl **pp;
  while( p ){
    closureAvlRecomputeHeight(p);
    if( p->imbalance>=2 ){
      closure_avl *pB = p->pBefore;
      if( pB->imbalance<0 ) p->pBefore = closureAvlRotateAfter(pB);
      pp = closureAvlFromPtr(p,&p);
      p = *pp = closureAvlRotateBefore(p);
    }else if( p->imbalance<=(-2) ){
      closure_avl *pA = p->pAfter;
      if( pA->imbalance>0 ) p->pAfter = closureAvlRotateBefore(pA);
      pp = closureAvlFromPtr(p,&p);
      p = *pp = closureAvlRotateAfter(p);
    }
    pTop = p;
    p = p->pUp;
  }
  return pTop;
}
