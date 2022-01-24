#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_7__ {scalar_t__ eSearch; int isEof; TYPE_1__ base; int /*<<< orphan*/  pStmt; int /*<<< orphan*/  iPrevId; } ;
struct TYPE_6__ {scalar_t__ pSegments; } ;
typedef  TYPE_2__ Fts3Table ;
typedef  TYPE_3__ Fts3Cursor ;

/* Variables and functions */
 scalar_t__ FTS3_DOCID_SEARCH ; 
 scalar_t__ FTS3_FULLSCAN_SEARCH ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sqlite3_vtab_cursor *pCursor){
  int rc;
  Fts3Cursor *pCsr = (Fts3Cursor *)pCursor;
  if( pCsr->eSearch==FTS3_DOCID_SEARCH || pCsr->eSearch==FTS3_FULLSCAN_SEARCH ){
    if( SQLITE_ROW!=FUNC4(pCsr->pStmt) ){
      pCsr->isEof = 1;
      rc = FUNC3(pCsr->pStmt);
    }else{
      pCsr->iPrevId = FUNC2(pCsr->pStmt, 0);
      rc = SQLITE_OK;
    }
  }else{
    rc = FUNC1((Fts3Cursor *)pCursor);
  }
  FUNC0( ((Fts3Table *)pCsr->base.pVtab)->pSegments==0 );
  return rc;
}