#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_1__ stmt_cursor ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_STMTSTATUS_FULLSCAN_STEP ; 
 int SQLITE_STMTSTATUS_MEMUSED ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
#define  STMT_COLUMN_BUSY 138 
#define  STMT_COLUMN_MEM 137 
#define  STMT_COLUMN_NAIDX 136 
#define  STMT_COLUMN_NCOL 135 
#define  STMT_COLUMN_NSCAN 134 
#define  STMT_COLUMN_NSORT 133 
#define  STMT_COLUMN_NSTEP 132 
#define  STMT_COLUMN_REPREP 131 
#define  STMT_COLUMN_RO 130 
#define  STMT_COLUMN_RUN 129 
#define  STMT_COLUMN_SQL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
  sqlite3_vtab_cursor *cur,   /* The cursor */
  sqlite3_context *ctx,       /* First argument to sqlite3_result_...() */
  int i                       /* Which column to return */
){
  stmt_cursor *pCur = (stmt_cursor*)cur;
  switch( i ){
    case STMT_COLUMN_SQL: {
      FUNC2(ctx, FUNC3(pCur->pStmt), -1, SQLITE_TRANSIENT);
      break;
    }
    case STMT_COLUMN_NCOL: {
      FUNC1(ctx, FUNC0(pCur->pStmt));
      break;
    }
    case STMT_COLUMN_RO: {
      FUNC1(ctx, FUNC5(pCur->pStmt));
      break;
    }
    case STMT_COLUMN_BUSY: {
      FUNC1(ctx, FUNC4(pCur->pStmt));
      break;
    }
    case STMT_COLUMN_MEM: {
      i = SQLITE_STMTSTATUS_MEMUSED + 
            STMT_COLUMN_NSCAN - SQLITE_STMTSTATUS_FULLSCAN_STEP;
      /* Fall thru */
    }
    case STMT_COLUMN_NSCAN:
    case STMT_COLUMN_NSORT:
    case STMT_COLUMN_NAIDX:
    case STMT_COLUMN_NSTEP:
    case STMT_COLUMN_REPREP:
    case STMT_COLUMN_RUN: {
      FUNC1(ctx, FUNC6(pCur->pStmt,
                      i-STMT_COLUMN_NSCAN+SQLITE_STMTSTATUS_FULLSCAN_STEP, 0));
      break;
    }
  }
  return SQLITE_OK;
}