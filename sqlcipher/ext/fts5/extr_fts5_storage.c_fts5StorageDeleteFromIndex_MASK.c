#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ i64 ;
struct TYPE_9__ {int nCol; scalar_t__* abUnindexed; } ;
struct TYPE_8__ {int iCol; scalar_t__ szCol; TYPE_1__* pStorage; } ;
struct TYPE_7__ {int /*<<< orphan*/  nTotalRow; int /*<<< orphan*/ * aTotalSize; int /*<<< orphan*/  pIndex; TYPE_3__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5InsertCtx ;
typedef  TYPE_3__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_STMT_LOOKUP ; 
 int /*<<< orphan*/  FTS5_TOKENIZE_DOCUMENT ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fts5StorageInsertCallback ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char const*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
  Fts5Storage *p, 
  i64 iDel, 
  sqlite3_value **apVal
){
  Fts5Config *pConfig = p->pConfig;
  sqlite3_stmt *pSeek = 0;        /* SELECT to read row iDel from %_data */
  int rc;                         /* Return code */
  int rc2;                        /* sqlite3_reset() return code */
  int iCol;
  Fts5InsertCtx ctx;

  if( apVal==0 ){
    rc = FUNC0(p, FTS5_STMT_LOOKUP, &pSeek, 0);
    if( rc!=SQLITE_OK ) return rc;
    FUNC3(pSeek, 1, iDel);
    if( FUNC7(pSeek)!=SQLITE_ROW ){
      return FUNC6(pSeek);
    }
  }

  ctx.pStorage = p;
  ctx.iCol = -1;
  rc = FUNC1(p->pIndex, 1, iDel);
  for(iCol=1; rc==SQLITE_OK && iCol<=pConfig->nCol; iCol++){
    if( pConfig->abUnindexed[iCol-1]==0 ){
      const char *zText;
      int nText;
      if( pSeek ){
        zText = (const char*)FUNC5(pSeek, iCol);
        nText = FUNC4(pSeek, iCol);
      }else{
        zText = (const char*)FUNC9(apVal[iCol-1]);
        nText = FUNC8(apVal[iCol-1]);
      }
      ctx.szCol = 0;
      rc = FUNC2(pConfig, FTS5_TOKENIZE_DOCUMENT, 
          zText, nText, (void*)&ctx, fts5StorageInsertCallback
      );
      p->aTotalSize[iCol-1] -= (i64)ctx.szCol;
    }
  }
  p->nTotalRow--;

  rc2 = FUNC6(pSeek);
  if( rc==SQLITE_OK ) rc = rc2;
  return rc;
}