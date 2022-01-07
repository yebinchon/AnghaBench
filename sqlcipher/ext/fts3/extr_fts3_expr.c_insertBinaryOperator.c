
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pParent; struct TYPE_6__* pLeft; struct TYPE_6__* pRight; } ;
typedef TYPE_1__ Fts3Expr ;


 int assert (int) ;
 scalar_t__ opPrecedence (TYPE_1__*) ;

__attribute__((used)) static void insertBinaryOperator(
  Fts3Expr **ppHead,
  Fts3Expr *pPrev,
  Fts3Expr *pNew
){
  Fts3Expr *pSplit = pPrev;
  while( pSplit->pParent && opPrecedence(pSplit->pParent)<=opPrecedence(pNew) ){
    pSplit = pSplit->pParent;
  }

  if( pSplit->pParent ){
    assert( pSplit->pParent->pRight==pSplit );
    pSplit->pParent->pRight = pNew;
    pNew->pParent = pSplit->pParent;
  }else{
    *ppHead = pNew;
  }
  pNew->pLeft = pSplit;
  pSplit->pParent = pNew;
}
