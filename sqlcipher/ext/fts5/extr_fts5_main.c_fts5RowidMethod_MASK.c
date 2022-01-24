#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_4__ {int ePlan; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_1__ Fts5Cursor ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_EOF ; 
#define  FTS5_PLAN_MATCH 131 
#define  FTS5_PLAN_SORTED_MATCH 130 
#define  FTS5_PLAN_SOURCE 129 
#define  FTS5_PLAN_SPECIAL 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab_cursor *pCursor, sqlite_int64 *pRowid){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCursor;
  int ePlan = pCsr->ePlan;
  
  FUNC1( FUNC0(pCsr, FTS5CSR_EOF)==0 );
  switch( ePlan ){
    case FTS5_PLAN_SPECIAL:
      *pRowid = 0;
      break;

    case FTS5_PLAN_SOURCE:
    case FTS5_PLAN_MATCH:
    case FTS5_PLAN_SORTED_MATCH:
      *pRowid = FUNC2(pCsr);
      break;

    default:
      *pRowid = FUNC3(pCsr->pStmt, 0);
      break;
  }

  return SQLITE_OK;
}