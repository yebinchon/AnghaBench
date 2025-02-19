
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pBefore; struct TYPE_5__* pAfter; struct TYPE_5__* pUp; } ;
typedef TYPE_1__ amatch_avl ;



__attribute__((used)) static amatch_avl **amatchAvlFromPtr(amatch_avl *p, amatch_avl **pp){
  amatch_avl *pUp = p->pUp;
  if( pUp==0 ) return pp;
  if( pUp->pAfter==p ) return &pUp->pAfter;
  return &pUp->pBefore;
}
