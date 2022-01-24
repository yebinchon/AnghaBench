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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Tcl_WideInt ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
struct TYPE_2__ {char* zTraceV2; int /*<<< orphan*/  interp; } ;
typedef  TYPE_1__ SqliteDb ;

/* Variables and functions */
 int SQLITE_OK ; 
#define  SQLITE_TRACE_CLOSE 131 
#define  SQLITE_TRACE_PROFILE 130 
#define  SQLITE_TRACE_ROW 129 
#define  SQLITE_TRACE_STMT 128 
 int /*<<< orphan*/  TCL_EVAL_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
  unsigned type, /* One of the SQLITE_TRACE_* event types. */
  void *cd,      /* The original context data pointer. */
  void *pd,      /* Primary event data, depends on event type. */
  void *xd       /* Extra event data, depends on event type. */
){
  SqliteDb *pDb = (SqliteDb*)cd;
  Tcl_Obj *pCmd;

  switch( type ){
    case SQLITE_TRACE_STMT: {
      sqlite3_stmt *pStmt = (sqlite3_stmt *)pd;
      char *zSql = (char *)xd;

      pCmd = FUNC4(pDb->zTraceV2, -1);
      FUNC2(pCmd);
      FUNC3(pDb->interp, pCmd,
                               FUNC5((Tcl_WideInt)pStmt));
      FUNC3(pDb->interp, pCmd,
                               FUNC4(zSql, -1));
      FUNC1(pDb->interp, pCmd, TCL_EVAL_DIRECT);
      FUNC0(pCmd);
      FUNC6(pDb->interp);
      break;
    }
    case SQLITE_TRACE_PROFILE: {
      sqlite3_stmt *pStmt = (sqlite3_stmt *)pd;
      sqlite3_int64 ns = *(sqlite3_int64*)xd;

      pCmd = FUNC4(pDb->zTraceV2, -1);
      FUNC2(pCmd);
      FUNC3(pDb->interp, pCmd,
                               FUNC5((Tcl_WideInt)pStmt));
      FUNC3(pDb->interp, pCmd,
                               FUNC5((Tcl_WideInt)ns));
      FUNC1(pDb->interp, pCmd, TCL_EVAL_DIRECT);
      FUNC0(pCmd);
      FUNC6(pDb->interp);
      break;
    }
    case SQLITE_TRACE_ROW: {
      sqlite3_stmt *pStmt = (sqlite3_stmt *)pd;

      pCmd = FUNC4(pDb->zTraceV2, -1);
      FUNC2(pCmd);
      FUNC3(pDb->interp, pCmd,
                               FUNC5((Tcl_WideInt)pStmt));
      FUNC1(pDb->interp, pCmd, TCL_EVAL_DIRECT);
      FUNC0(pCmd);
      FUNC6(pDb->interp);
      break;
    }
    case SQLITE_TRACE_CLOSE: {
      sqlite3 *db = (sqlite3 *)pd;

      pCmd = FUNC4(pDb->zTraceV2, -1);
      FUNC2(pCmd);
      FUNC3(pDb->interp, pCmd,
                               FUNC5((Tcl_WideInt)db));
      FUNC1(pDb->interp, pCmd, TCL_EVAL_DIRECT);
      FUNC0(pCmd);
      FUNC6(pDb->interp);
      break;
    }
  }
  return SQLITE_OK;
}