
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef scalar_t__ i64 ;
struct TYPE_19__ {int p; int member_2; int member_1; int member_0; } ;
struct TYPE_18__ {size_t nCol; scalar_t__* abUnindexed; } ;
struct TYPE_17__ {size_t iCol; scalar_t__ szCol; TYPE_1__* pStorage; } ;
struct TYPE_16__ {int nTotalRow; int * aTotalSize; int pIndex; TYPE_3__* pConfig; } ;
typedef TYPE_1__ Fts5Storage ;
typedef TYPE_2__ Fts5InsertCtx ;
typedef TYPE_3__ Fts5Config ;
typedef TYPE_4__ Fts5Buffer ;


 int FTS5_STMT_SCAN ;
 int FTS5_TOKENIZE_DOCUMENT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int fts5StorageGetStmt (TYPE_1__*,int ,int **,int ) ;
 int fts5StorageInsertCallback ;
 int fts5StorageInsertDocsize (TYPE_1__*,scalar_t__,TYPE_4__*) ;
 int fts5StorageLoadTotals (TYPE_1__*,int) ;
 int fts5StorageSaveTotals (TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3Fts5BufferAppendVarint (int*,TYPE_4__*,scalar_t__) ;
 int sqlite3Fts5BufferZero (TYPE_4__*) ;
 int sqlite3Fts5IndexBeginWrite (int ,int ,scalar_t__) ;
 int sqlite3Fts5StorageDeleteAll (TYPE_1__*) ;
 int sqlite3Fts5Tokenize (TYPE_3__*,int ,char const*,int ,void*,int ) ;
 int sqlite3_column_bytes (int *,int) ;
 scalar_t__ sqlite3_column_int64 (int *,int ) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_free (int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

int sqlite3Fts5StorageRebuild(Fts5Storage *p){
  Fts5Buffer buf = {0,0,0};
  Fts5Config *pConfig = p->pConfig;
  sqlite3_stmt *pScan = 0;
  Fts5InsertCtx ctx;
  int rc, rc2;

  memset(&ctx, 0, sizeof(Fts5InsertCtx));
  ctx.pStorage = p;
  rc = sqlite3Fts5StorageDeleteAll(p);
  if( rc==SQLITE_OK ){
    rc = fts5StorageLoadTotals(p, 1);
  }

  if( rc==SQLITE_OK ){
    rc = fts5StorageGetStmt(p, FTS5_STMT_SCAN, &pScan, 0);
  }

  while( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pScan) ){
    i64 iRowid = sqlite3_column_int64(pScan, 0);

    sqlite3Fts5BufferZero(&buf);
    rc = sqlite3Fts5IndexBeginWrite(p->pIndex, 0, iRowid);
    for(ctx.iCol=0; rc==SQLITE_OK && ctx.iCol<pConfig->nCol; ctx.iCol++){
      ctx.szCol = 0;
      if( pConfig->abUnindexed[ctx.iCol]==0 ){
        rc = sqlite3Fts5Tokenize(pConfig,
            FTS5_TOKENIZE_DOCUMENT,
            (const char*)sqlite3_column_text(pScan, ctx.iCol+1),
            sqlite3_column_bytes(pScan, ctx.iCol+1),
            (void*)&ctx,
            fts5StorageInsertCallback
        );
      }
      sqlite3Fts5BufferAppendVarint(&rc, &buf, ctx.szCol);
      p->aTotalSize[ctx.iCol] += (i64)ctx.szCol;
    }
    p->nTotalRow++;

    if( rc==SQLITE_OK ){
      rc = fts5StorageInsertDocsize(p, iRowid, &buf);
    }
  }
  sqlite3_free(buf.p);
  rc2 = sqlite3_reset(pScan);
  if( rc==SQLITE_OK ) rc = rc2;


  if( rc==SQLITE_OK ){
    rc = fts5StorageSaveTotals(p);
  }
  return rc;
}
