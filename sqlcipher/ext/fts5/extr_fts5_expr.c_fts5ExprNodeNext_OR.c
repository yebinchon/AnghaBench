
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_5__ {int nChild; scalar_t__ bEof; scalar_t__ bNomatch; int iRowid; struct TYPE_5__** apChild; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef int Fts5Expr ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNodeNext (int *,TYPE_1__*,int,int ) ;
 int fts5ExprNodeTest_OR (int *,TYPE_1__*) ;
 scalar_t__ fts5RowidCmp (int *,int ,int ) ;

__attribute__((used)) static int fts5ExprNodeNext_OR(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode,
  int bFromValid,
  i64 iFrom
){
  int i;
  i64 iLast = pNode->iRowid;

  for(i=0; i<pNode->nChild; i++){
    Fts5ExprNode *p1 = pNode->apChild[i];
    assert( p1->bEof || fts5RowidCmp(pExpr, p1->iRowid, iLast)>=0 );
    if( p1->bEof==0 ){
      if( (p1->iRowid==iLast)
       || (bFromValid && fts5RowidCmp(pExpr, p1->iRowid, iFrom)<0)
      ){
        int rc = fts5ExprNodeNext(pExpr, p1, bFromValid, iFrom);
        if( rc!=SQLITE_OK ){
          pNode->bNomatch = 0;
          return rc;
        }
      }
    }
  }

  fts5ExprNodeTest_OR(pExpr, pNode);
  return SQLITE_OK;
}
