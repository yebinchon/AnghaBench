
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nChild; scalar_t__ bNomatch; int bEof; int iRowid; struct TYPE_5__** apChild; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef int Fts5Expr ;


 int fts5NodeCompare (int *,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void fts5ExprNodeTest_OR(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode
){
  Fts5ExprNode *pNext = pNode->apChild[0];
  int i;

  for(i=1; i<pNode->nChild; i++){
    Fts5ExprNode *pChild = pNode->apChild[i];
    int cmp = fts5NodeCompare(pExpr, pNext, pChild);
    if( cmp>0 || (cmp==0 && pChild->bNomatch==0) ){
      pNext = pChild;
    }
  }
  pNode->iRowid = pNext->iRowid;
  pNode->bEof = pNext->bEof;
  pNode->bNomatch = pNext->bNomatch;
}
