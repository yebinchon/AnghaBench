
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nChild; scalar_t__ bEof; int iRowid; scalar_t__ bNomatch; struct TYPE_7__** apChild; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef int Fts5Expr ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNodeNext (int *,TYPE_1__*,int,int ) ;
 int fts5ExprNodeZeroPoslist (TYPE_1__*) ;
 int fts5NodeCompare (int *,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int fts5ExprNodeTest_NOT(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode
){
  int rc = SQLITE_OK;
  Fts5ExprNode *p1 = pNode->apChild[0];
  Fts5ExprNode *p2 = pNode->apChild[1];
  assert( pNode->nChild==2 );

  while( rc==SQLITE_OK && p1->bEof==0 ){
    int cmp = fts5NodeCompare(pExpr, p1, p2);
    if( cmp>0 ){
      rc = fts5ExprNodeNext(pExpr, p2, 1, p1->iRowid);
      cmp = fts5NodeCompare(pExpr, p1, p2);
    }
    assert( rc!=SQLITE_OK || cmp<=0 );
    if( cmp || p2->bNomatch ) break;
    rc = fts5ExprNodeNext(pExpr, p1, 0, 0);
  }
  pNode->bEof = p1->bEof;
  pNode->bNomatch = p1->bNomatch;
  pNode->iRowid = p1->iRowid;
  if( p1->bEof ){
    fts5ExprNodeZeroPoslist(p2);
  }
  return rc;
}
