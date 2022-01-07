
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_11__ {TYPE_1__* pRoot; } ;
struct TYPE_10__ {scalar_t__ iRowid; scalar_t__ bEof; int bNomatch; int nChild; struct TYPE_10__** apChild; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef TYPE_2__ Fts5Expr ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNodeNext (TYPE_2__*,TYPE_1__*,int,scalar_t__) ;
 int fts5ExprNodeZeroPoslist (TYPE_1__*) ;
 int fts5ExprSetEof (TYPE_1__*) ;
 int fts5RowidCmp (TYPE_2__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int fts5ExprNodeTest_AND(
  Fts5Expr *pExpr,
  Fts5ExprNode *pAnd
){
  int iChild;
  i64 iLast = pAnd->iRowid;
  int rc = SQLITE_OK;
  int bMatch;

  assert( pAnd->bEof==0 );
  do {
    pAnd->bNomatch = 0;
    bMatch = 1;
    for(iChild=0; iChild<pAnd->nChild; iChild++){
      Fts5ExprNode *pChild = pAnd->apChild[iChild];
      int cmp = fts5RowidCmp(pExpr, iLast, pChild->iRowid);
      if( cmp>0 ){

        rc = fts5ExprNodeNext(pExpr, pChild, 1, iLast);
        if( rc!=SQLITE_OK ){
          pAnd->bNomatch = 0;
          return rc;
        }
      }





      assert( pChild->bEof || fts5RowidCmp(pExpr, iLast, pChild->iRowid)<=0 );
      if( pChild->bEof ){
        fts5ExprSetEof(pAnd);
        bMatch = 1;
        break;
      }else if( iLast!=pChild->iRowid ){
        bMatch = 0;
        iLast = pChild->iRowid;
      }

      if( pChild->bNomatch ){
        pAnd->bNomatch = 1;
      }
    }
  }while( bMatch==0 );

  if( pAnd->bNomatch && pAnd!=pExpr->pRoot ){
    fts5ExprNodeZeroPoslist(pAnd);
  }
  pAnd->iRowid = iLast;
  return SQLITE_OK;
}
