#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_8__ {int isEof; TYPE_1__ base; int /*<<< orphan*/  pStmt; scalar_t__ isRequireSeek; int /*<<< orphan*/  iPrevId; } ;
struct TYPE_7__ {scalar_t__ zContentTbl; } ;
typedef  TYPE_2__ Fts3Table ;
typedef  TYPE_3__ Fts3Cursor ;

/* Variables and functions */
 int FTS_CORRUPT_VTAB ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sqlite3_context *pContext, Fts3Cursor *pCsr){
  int rc = SQLITE_OK;
  if( pCsr->isRequireSeek ){
    rc = FUNC0(pCsr);
    if( rc==SQLITE_OK ){
      FUNC1(pCsr->pStmt, 1, pCsr->iPrevId);
      pCsr->isRequireSeek = 0;
      if( SQLITE_ROW==FUNC4(pCsr->pStmt) ){
        return SQLITE_OK;
      }else{
        rc = FUNC2(pCsr->pStmt);
        if( rc==SQLITE_OK && ((Fts3Table *)pCsr->base.pVtab)->zContentTbl==0 ){
          /* If no row was found and no error has occurred, then the %_content
          ** table is missing a row that is present in the full-text index.
          ** The data structures are corrupt.  */
          rc = FTS_CORRUPT_VTAB;
          pCsr->isEof = 1;
        }
      }
    }
  }

  if( rc!=SQLITE_OK && pContext ){
    FUNC3(pContext, rc);
  }
  return rc;
}