#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  scalar_t__ i64 ;
struct TYPE_15__ {int /*<<< orphan*/  p; } ;
struct TYPE_14__ {size_t nCol; scalar_t__* abUnindexed; } ;
struct TYPE_13__ {size_t iCol; scalar_t__ szCol; TYPE_1__* pStorage; } ;
struct TYPE_12__ {int /*<<< orphan*/  nTotalRow; int /*<<< orphan*/ * aTotalSize; int /*<<< orphan*/  pIndex; TYPE_3__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5InsertCtx ;
typedef  TYPE_3__ Fts5Config ;
typedef  TYPE_4__ Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_TOKENIZE_DOCUMENT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  fts5StorageInsertCallback ; 
 int FUNC0 (TYPE_1__*,scalar_t__,TYPE_4__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_4__*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
  Fts5Storage *p, 
  sqlite3_value **apVal, 
  i64 iRowid
){
  Fts5Config *pConfig = p->pConfig;
  int rc = SQLITE_OK;             /* Return code */
  Fts5InsertCtx ctx;              /* Tokenization callback context object */
  Fts5Buffer buf;                 /* Buffer used to build up %_docsize blob */

  FUNC2(&buf, 0, sizeof(Fts5Buffer));
  ctx.pStorage = p;
  rc = FUNC1(p, 1);

  if( rc==SQLITE_OK ){
    rc = FUNC4(p->pIndex, 0, iRowid);
  }
  for(ctx.iCol=0; rc==SQLITE_OK && ctx.iCol<pConfig->nCol; ctx.iCol++){
    ctx.szCol = 0;
    if( pConfig->abUnindexed[ctx.iCol]==0 ){
      rc = FUNC5(pConfig, 
          FTS5_TOKENIZE_DOCUMENT,
          (const char*)FUNC8(apVal[ctx.iCol+2]),
          FUNC7(apVal[ctx.iCol+2]),
          (void*)&ctx,
          fts5StorageInsertCallback
      );
    }
    FUNC3(&rc, &buf, ctx.szCol);
    p->aTotalSize[ctx.iCol] += (i64)ctx.szCol;
  }
  p->nTotalRow++;

  /* Write the %_docsize record */
  if( rc==SQLITE_OK ){
    rc = FUNC0(p, iRowid, &buf);
  }
  FUNC6(buf.p);

  return rc;
}