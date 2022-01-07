
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {int szRow; int ePhase; int zLine; int zPrefix; int zCurrentRow; } ;
typedef TYPE_1__ completion_cursor ;






 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int completionColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  completion_cursor *pCur = (completion_cursor*)cur;
  switch( i ){
    case 131: {
      sqlite3_result_text(ctx, pCur->zCurrentRow, pCur->szRow,SQLITE_TRANSIENT);
      break;
    }
    case 129: {
      sqlite3_result_text(ctx, pCur->zPrefix, -1, SQLITE_TRANSIENT);
      break;
    }
    case 128: {
      sqlite3_result_text(ctx, pCur->zLine, -1, SQLITE_TRANSIENT);
      break;
    }
    case 130: {
      sqlite3_result_int(ctx, pCur->ePhase);
      break;
    }
  }
  return SQLITE_OK;
}
