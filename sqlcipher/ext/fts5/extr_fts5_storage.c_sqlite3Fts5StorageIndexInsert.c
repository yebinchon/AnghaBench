
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef scalar_t__ i64 ;
struct TYPE_15__ {int p; } ;
struct TYPE_14__ {size_t nCol; scalar_t__* abUnindexed; } ;
struct TYPE_13__ {size_t iCol; scalar_t__ szCol; TYPE_1__* pStorage; } ;
struct TYPE_12__ {int nTotalRow; int * aTotalSize; int pIndex; TYPE_3__* pConfig; } ;
typedef TYPE_1__ Fts5Storage ;
typedef TYPE_2__ Fts5InsertCtx ;
typedef TYPE_3__ Fts5Config ;
typedef TYPE_4__ Fts5Buffer ;


 int FTS5_TOKENIZE_DOCUMENT ;
 int SQLITE_OK ;
 int fts5StorageInsertCallback ;
 int fts5StorageInsertDocsize (TYPE_1__*,scalar_t__,TYPE_4__*) ;
 int fts5StorageLoadTotals (TYPE_1__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int sqlite3Fts5BufferAppendVarint (int*,TYPE_4__*,scalar_t__) ;
 int sqlite3Fts5IndexBeginWrite (int ,int ,scalar_t__) ;
 int sqlite3Fts5Tokenize (TYPE_3__*,int ,char const*,int ,void*,int ) ;
 int sqlite3_free (int ) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

int sqlite3Fts5StorageIndexInsert(
  Fts5Storage *p,
  sqlite3_value **apVal,
  i64 iRowid
){
  Fts5Config *pConfig = p->pConfig;
  int rc = SQLITE_OK;
  Fts5InsertCtx ctx;
  Fts5Buffer buf;

  memset(&buf, 0, sizeof(Fts5Buffer));
  ctx.pStorage = p;
  rc = fts5StorageLoadTotals(p, 1);

  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5IndexBeginWrite(p->pIndex, 0, iRowid);
  }
  for(ctx.iCol=0; rc==SQLITE_OK && ctx.iCol<pConfig->nCol; ctx.iCol++){
    ctx.szCol = 0;
    if( pConfig->abUnindexed[ctx.iCol]==0 ){
      rc = sqlite3Fts5Tokenize(pConfig,
          FTS5_TOKENIZE_DOCUMENT,
          (const char*)sqlite3_value_text(apVal[ctx.iCol+2]),
          sqlite3_value_bytes(apVal[ctx.iCol+2]),
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
  sqlite3_free(buf.p);

  return rc;
}
