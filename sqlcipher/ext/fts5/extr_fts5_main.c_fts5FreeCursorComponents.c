
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {scalar_t__ ePlan; TYPE_2__* zRankArgs; TYPE_2__* zRank; TYPE_2__* apRankArg; int pRankArgStmt; TYPE_2__* pAuxdata; int pExpr; TYPE_2__* pSorter; scalar_t__ pStmt; TYPE_2__* aInst; TYPE_2__* aInstIter; TYPE_1__ base; } ;
struct TYPE_12__ {int pStorage; } ;
struct TYPE_11__ {int pPtr; int (* xDelete ) (int ) ;struct TYPE_11__* pNext; int pStmt; } ;
typedef TYPE_2__ Fts5Sorter ;
typedef TYPE_3__ Fts5FullTable ;
typedef TYPE_4__ Fts5Cursor ;
typedef TYPE_2__ Fts5Auxdata ;


 scalar_t__ CsrFlagTest (TYPE_4__*,int ) ;
 int FTS5CSR_FREE_ZRANK ;
 scalar_t__ FTS5_PLAN_SOURCE ;
 int fts5StmtType (TYPE_4__*) ;
 int memset (scalar_t__*,int ,int) ;
 int sqlite3Fts5ExprFree (int ) ;
 int sqlite3Fts5StorageStmtRelease (int ,int,scalar_t__) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void fts5FreeCursorComponents(Fts5Cursor *pCsr){
  Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
  Fts5Auxdata *pData;
  Fts5Auxdata *pNext;

  sqlite3_free(pCsr->aInstIter);
  sqlite3_free(pCsr->aInst);
  if( pCsr->pStmt ){
    int eStmt = fts5StmtType(pCsr);
    sqlite3Fts5StorageStmtRelease(pTab->pStorage, eStmt, pCsr->pStmt);
  }
  if( pCsr->pSorter ){
    Fts5Sorter *pSorter = pCsr->pSorter;
    sqlite3_finalize(pSorter->pStmt);
    sqlite3_free(pSorter);
  }

  if( pCsr->ePlan!=FTS5_PLAN_SOURCE ){
    sqlite3Fts5ExprFree(pCsr->pExpr);
  }

  for(pData=pCsr->pAuxdata; pData; pData=pNext){
    pNext = pData->pNext;
    if( pData->xDelete ) pData->xDelete(pData->pPtr);
    sqlite3_free(pData);
  }

  sqlite3_finalize(pCsr->pRankArgStmt);
  sqlite3_free(pCsr->apRankArg);

  if( CsrFlagTest(pCsr, FTS5CSR_FREE_ZRANK) ){
    sqlite3_free(pCsr->zRank);
    sqlite3_free(pCsr->zRankArgs);
  }

  memset(&pCsr->ePlan, 0, sizeof(Fts5Cursor) - ((u8*)&pCsr->ePlan - (u8*)pCsr));
}
