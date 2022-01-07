
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ pVtab; } ;
typedef TYPE_2__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_17__ {int nCol; } ;
struct TYPE_16__ {scalar_t__ ePlan; int pStmt; int apRankArg; int nRankArg; scalar_t__ pRank; int iCsrId; int iSpecial; } ;
struct TYPE_13__ {TYPE_5__* pConfig; } ;
struct TYPE_15__ {TYPE_1__ p; } ;
typedef TYPE_3__ Fts5FullTable ;
typedef TYPE_4__ Fts5Cursor ;
typedef TYPE_5__ Fts5Config ;


 scalar_t__ CsrFlagTest (TYPE_4__*,int ) ;
 int FTS5CSR_EOF ;
 scalar_t__ FTS5_PLAN_MATCH ;
 scalar_t__ FTS5_PLAN_SORTED_MATCH ;
 scalar_t__ FTS5_PLAN_SOURCE ;
 scalar_t__ FTS5_PLAN_SPECIAL ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5ApiInvoke (scalar_t__,TYPE_4__*,int *,int ,int ) ;
 int fts5FindRankFunction (TYPE_4__*) ;
 int fts5IsContentless (TYPE_3__*) ;
 int fts5PoslistBlob (int *,TYPE_4__*) ;
 int fts5SeekCursor (TYPE_4__*,int) ;
 int sqlite3_column_value (int ,int) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int fts5ColumnMethod(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *pCtx,
  int iCol
){
  Fts5FullTable *pTab = (Fts5FullTable*)(pCursor->pVtab);
  Fts5Config *pConfig = pTab->p.pConfig;
  Fts5Cursor *pCsr = (Fts5Cursor*)pCursor;
  int rc = SQLITE_OK;

  assert( CsrFlagTest(pCsr, FTS5CSR_EOF)==0 );

  if( pCsr->ePlan==FTS5_PLAN_SPECIAL ){
    if( iCol==pConfig->nCol ){
      sqlite3_result_int64(pCtx, pCsr->iSpecial);
    }
  }else

  if( iCol==pConfig->nCol ){




    sqlite3_result_int64(pCtx, pCsr->iCsrId);
  }else if( iCol==pConfig->nCol+1 ){


    if( pCsr->ePlan==FTS5_PLAN_SOURCE ){
      fts5PoslistBlob(pCtx, pCsr);
    }else if(
        pCsr->ePlan==FTS5_PLAN_MATCH
     || pCsr->ePlan==FTS5_PLAN_SORTED_MATCH
    ){
      if( pCsr->pRank || SQLITE_OK==(rc = fts5FindRankFunction(pCsr)) ){
        fts5ApiInvoke(pCsr->pRank, pCsr, pCtx, pCsr->nRankArg, pCsr->apRankArg);
      }
    }
  }else if( !fts5IsContentless(pTab) ){
    rc = fts5SeekCursor(pCsr, 1);
    if( rc==SQLITE_OK ){
      sqlite3_result_value(pCtx, sqlite3_column_value(pCsr->pStmt, iCol+1));
    }
  }
  return rc;
}
