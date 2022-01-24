#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ i64 ;
struct TYPE_19__ {int /*<<< orphan*/  p; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {size_t nCol; scalar_t__* abUnindexed; } ;
struct TYPE_17__ {size_t iCol; scalar_t__ szCol; TYPE_1__* pStorage; } ;
struct TYPE_16__ {int /*<<< orphan*/  nTotalRow; int /*<<< orphan*/ * aTotalSize; int /*<<< orphan*/  pIndex; TYPE_3__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5InsertCtx ;
typedef  TYPE_3__ Fts5Config ;
typedef  TYPE_4__ Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_STMT_SCAN ; 
 int /*<<< orphan*/  FTS5_TOKENIZE_DOCUMENT ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fts5StorageInsertCallback ; 
 int FUNC1 (TYPE_1__*,scalar_t__,TYPE_4__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(Fts5Storage *p){
  Fts5Buffer buf = {0,0,0};
  Fts5Config *pConfig = p->pConfig;
  sqlite3_stmt *pScan = 0;
  Fts5InsertCtx ctx;
  int rc, rc2;

  FUNC4(&ctx, 0, sizeof(Fts5InsertCtx));
  ctx.pStorage = p;
  rc = FUNC8(p);
  if( rc==SQLITE_OK ){
    rc = FUNC2(p, 1);
  }

  if( rc==SQLITE_OK ){
    rc = FUNC0(p, FTS5_STMT_SCAN, &pScan, 0);
  }

  while( rc==SQLITE_OK && SQLITE_ROW==FUNC15(pScan) ){
    i64 iRowid = FUNC11(pScan, 0);

    FUNC6(&buf);
    rc = FUNC7(p->pIndex, 0, iRowid);
    for(ctx.iCol=0; rc==SQLITE_OK && ctx.iCol<pConfig->nCol; ctx.iCol++){
      ctx.szCol = 0;
      if( pConfig->abUnindexed[ctx.iCol]==0 ){
        rc = FUNC9(pConfig, 
            FTS5_TOKENIZE_DOCUMENT,
            (const char*)FUNC12(pScan, ctx.iCol+1),
            FUNC10(pScan, ctx.iCol+1),
            (void*)&ctx,
            fts5StorageInsertCallback
        );
      }
      FUNC5(&rc, &buf, ctx.szCol);
      p->aTotalSize[ctx.iCol] += (i64)ctx.szCol;
    }
    p->nTotalRow++;

    if( rc==SQLITE_OK ){
      rc = FUNC1(p, iRowid, &buf);
    }
  }
  FUNC13(buf.p);
  rc2 = FUNC14(pScan);
  if( rc==SQLITE_OK ) rc = rc2;

  /* Write the averages record */
  if( rc==SQLITE_OK ){
    rc = FUNC3(p);
  }
  return rc;
}