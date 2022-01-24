#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int imbalance; struct TYPE_10__* pUp; struct TYPE_10__* pAfter; struct TYPE_10__* pBefore; } ;
typedef  TYPE_1__ amatch_avl ;

/* Variables and functions */
 TYPE_1__** FUNC0 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static amatch_avl *FUNC4(amatch_avl *p){
  amatch_avl *pTop = p;
  amatch_avl **pp;
  while( p ){
    FUNC1(p);
    if( p->imbalance>=2 ){
      amatch_avl *pB = p->pBefore;
      if( pB->imbalance<0 ) p->pBefore = FUNC2(pB);
      pp = FUNC0(p,&p);
      p = *pp = FUNC3(p);
    }else if( p->imbalance<=(-2) ){
      amatch_avl *pA = p->pAfter;
      if( pA->imbalance>0 ) p->pAfter = FUNC3(pA);
      pp = FUNC0(p,&p);
      p = *pp = FUNC2(p);
    }
    pTop = p;
    p = p->pUp;
  }
  return pTop;
}