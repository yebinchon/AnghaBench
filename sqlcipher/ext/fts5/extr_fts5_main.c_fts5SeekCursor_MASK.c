#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ pVtab; } ;
struct TYPE_15__ {scalar_t__ pStmt; int pExpr; TYPE_1__ base; } ;
struct TYPE_12__ {scalar_t__ zErrMsg; } ;
struct TYPE_13__ {TYPE_2__ base; } ;
struct TYPE_14__ {TYPE_3__ p; int /*<<< orphan*/  pStorage; } ;
typedef  TYPE_4__ Fts5FullTable ;
typedef  TYPE_5__ Fts5Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_REQUIRE_CONTENT ; 
 int FTS5_CORRUPT ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(Fts5Cursor *pCsr, int bErrormsg){
  int rc = SQLITE_OK;

  /* If the cursor does not yet have a statement handle, obtain one now. */ 
  if( pCsr->pStmt==0 ){
    Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
    int eStmt = FUNC4(pCsr);
    rc = FUNC5(
        pTab->pStorage, eStmt, &pCsr->pStmt, (bErrormsg?&pTab->p.base.zErrMsg:0)
    );
    FUNC2( rc!=SQLITE_OK || pTab->p.base.zErrMsg==0 );
    FUNC2( FUNC1(pCsr, FTS5CSR_REQUIRE_CONTENT) );
  }

  if( rc==SQLITE_OK && FUNC1(pCsr, FTS5CSR_REQUIRE_CONTENT) ){
    FUNC2( pCsr->pExpr );
    FUNC7(pCsr->pStmt);
    FUNC6(pCsr->pStmt, 1, FUNC3(pCsr));
    rc = FUNC8(pCsr->pStmt);
    if( rc==SQLITE_ROW ){
      rc = SQLITE_OK;
      FUNC0(pCsr, FTS5CSR_REQUIRE_CONTENT);
    }else{
      rc = FUNC7(pCsr->pStmt);
      if( rc==SQLITE_OK ){
        rc = FTS5_CORRUPT;
      }
    }
  }
  return rc;
}