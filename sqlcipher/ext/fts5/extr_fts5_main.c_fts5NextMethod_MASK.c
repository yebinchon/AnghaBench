#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_7__ {int ePlan; int /*<<< orphan*/  pStmt; int /*<<< orphan*/  pExpr; int /*<<< orphan*/  iLastRowid; } ;
typedef  TYPE_1__ Fts5Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_EOF ; 
 int FTS5_PLAN_MATCH ; 
#define  FTS5_PLAN_SORTED_MATCH 129 
 int FTS5_PLAN_SOURCE ; 
#define  FTS5_PLAN_SPECIAL 128 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(sqlite3_vtab_cursor *pCursor){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCursor;
  int rc;

  FUNC2( (pCsr->ePlan<3)==
          (pCsr->ePlan==FTS5_PLAN_MATCH || pCsr->ePlan==FTS5_PLAN_SOURCE) 
  );
  FUNC2( !FUNC1(pCsr, FTS5CSR_EOF) );

  if( pCsr->ePlan<3 ){
    int bSkip = 0;
    if( (rc = FUNC4(pCsr, &bSkip)) || bSkip ) return rc;
    rc = FUNC7(pCsr->pExpr, pCsr->iLastRowid);
    FUNC0(pCsr, FUNC6(pCsr->pExpr));
    FUNC3(pCsr);
  }else{
    switch( pCsr->ePlan ){
      case FTS5_PLAN_SPECIAL: {
        FUNC0(pCsr, FTS5CSR_EOF);
        rc = SQLITE_OK;
        break;
      }
  
      case FTS5_PLAN_SORTED_MATCH: {
        rc = FUNC5(pCsr);
        break;
      }
  
      default:
        rc = FUNC9(pCsr->pStmt);
        if( rc!=SQLITE_ROW ){
          FUNC0(pCsr, FTS5CSR_EOF);
          rc = FUNC8(pCsr->pStmt);
        }else{
          rc = SQLITE_OK;
        }
        break;
    }
  }
  
  return rc;
}