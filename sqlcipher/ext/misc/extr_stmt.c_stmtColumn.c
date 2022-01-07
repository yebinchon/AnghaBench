
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pStmt; } ;
typedef TYPE_1__ stmt_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;


 int SQLITE_OK ;
 int SQLITE_STMTSTATUS_FULLSCAN_STEP ;
 int SQLITE_STMTSTATUS_MEMUSED ;
 int SQLITE_TRANSIENT ;
 int sqlite3_column_count (int ) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int sqlite3_sql (int ) ;
 int sqlite3_stmt_busy (int ) ;
 int sqlite3_stmt_readonly (int ) ;
 int sqlite3_stmt_status (int ,int,int ) ;

__attribute__((used)) static int stmtColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  stmt_cursor *pCur = (stmt_cursor*)cur;
  switch( i ){
    case 128: {
      sqlite3_result_text(ctx, sqlite3_sql(pCur->pStmt), -1, SQLITE_TRANSIENT);
      break;
    }
    case 135: {
      sqlite3_result_int(ctx, sqlite3_column_count(pCur->pStmt));
      break;
    }
    case 130: {
      sqlite3_result_int(ctx, sqlite3_stmt_readonly(pCur->pStmt));
      break;
    }
    case 138: {
      sqlite3_result_int(ctx, sqlite3_stmt_busy(pCur->pStmt));
      break;
    }
    case 137: {
      i = SQLITE_STMTSTATUS_MEMUSED +
            134 - SQLITE_STMTSTATUS_FULLSCAN_STEP;

    }
    case 134:
    case 133:
    case 136:
    case 132:
    case 131:
    case 129: {
      sqlite3_result_int(ctx, sqlite3_stmt_status(pCur->pStmt,
                      i-134 +SQLITE_STMTSTATUS_FULLSCAN_STEP, 0));
      break;
    }
  }
  return SQLITE_OK;
}
