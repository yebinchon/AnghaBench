
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_6__ {TYPE_2__* pVtab; int zParentColumn; int zIdColumn; int zTableName; TYPE_1__* pCurrent; } ;
typedef TYPE_3__ closure_cursor ;
struct TYPE_5__ {int zParentColumn; int zIdColumn; int zTableName; } ;
struct TYPE_4__ {int iGeneration; int id; } ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static int closureColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  closure_cursor *pCur = (closure_cursor*)cur;
  switch( i ){
    case 132: {
      sqlite3_result_int64(ctx, pCur->pCurrent->id);
      break;
    }
    case 133: {
      sqlite3_result_int(ctx, pCur->pCurrent->iGeneration);
      break;
    }
    case 129: {
      sqlite3_result_null(ctx);
      break;
    }
    case 128: {
      sqlite3_result_text(ctx,
         pCur->zTableName ? pCur->zTableName : pCur->pVtab->zTableName,
         -1, SQLITE_TRANSIENT);
      break;
    }
    case 131: {
      sqlite3_result_text(ctx,
         pCur->zIdColumn ? pCur->zIdColumn : pCur->pVtab->zIdColumn,
         -1, SQLITE_TRANSIENT);
      break;
    }
    case 130: {
      sqlite3_result_text(ctx,
         pCur->zParentColumn ? pCur->zParentColumn : pCur->pVtab->zParentColumn,
         -1, SQLITE_TRANSIENT);
      break;
    }
  }
  return SQLITE_OK;
}
