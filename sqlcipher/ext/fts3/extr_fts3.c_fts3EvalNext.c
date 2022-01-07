
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int isEof; int isRequireSeek; int isMatchinfoNeeded; scalar_t__ iPrevId; scalar_t__ bDesc; scalar_t__ iMaxDocid; scalar_t__ iMinDocid; int pStmt; TYPE_1__* pExpr; } ;
struct TYPE_7__ {int bEof; scalar_t__ iDocid; } ;
typedef TYPE_1__ Fts3Expr ;
typedef TYPE_2__ Fts3Cursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3EvalNextRow (TYPE_2__*,TYPE_1__*,int*) ;
 scalar_t__ sqlite3Fts3EvalTestDeferred (TYPE_2__*,int*) ;
 scalar_t__ sqlite3_data_count (int ) ;
 int sqlite3_reset (int ) ;

__attribute__((used)) static int fts3EvalNext(Fts3Cursor *pCsr){
  int rc = SQLITE_OK;
  Fts3Expr *pExpr = pCsr->pExpr;
  assert( pCsr->isEof==0 );
  if( pExpr==0 ){
    pCsr->isEof = 1;
  }else{
    do {
      if( pCsr->isRequireSeek==0 ){
        sqlite3_reset(pCsr->pStmt);
      }
      assert( sqlite3_data_count(pCsr->pStmt)==0 );
      fts3EvalNextRow(pCsr, pExpr, &rc);
      pCsr->isEof = pExpr->bEof;
      pCsr->isRequireSeek = 1;
      pCsr->isMatchinfoNeeded = 1;
      pCsr->iPrevId = pExpr->iDocid;
    }while( pCsr->isEof==0 && sqlite3Fts3EvalTestDeferred(pCsr, &rc) );
  }



  if( rc==SQLITE_OK && (
        (pCsr->bDesc==0 && pCsr->iPrevId>pCsr->iMaxDocid)
     || (pCsr->bDesc!=0 && pCsr->iPrevId<pCsr->iMinDocid)
  )){
    pCsr->isEof = 1;
  }

  return rc;
}
