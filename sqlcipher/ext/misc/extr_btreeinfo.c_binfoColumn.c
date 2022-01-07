
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pVtab; } ;
typedef TYPE_2__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
struct TYPE_8__ {scalar_t__ hasRowid; scalar_t__ nPage; scalar_t__ depth; int zSchema; int nEntry; int pStmt; } ;
struct TYPE_6__ {int zErrMsg; } ;
typedef TYPE_3__ BinfoCursor ;
 int BINFO_COLUMN_SZPAGE ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int binfoCompute (int *,int,TYPE_3__*) ;
 int sqlite3_column_int (int ,int) ;
 int sqlite3_column_value (int ,int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_mprintf (char*,int ) ;
 int sqlite3_result_int (int *,scalar_t__) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int binfoColumn(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *ctx,
  int i
){
  BinfoCursor *pCsr = (BinfoCursor *)pCursor;
  if( i>=136 && i<=BINFO_COLUMN_SZPAGE && pCsr->hasRowid<0 ){
    int pgno = sqlite3_column_int(pCsr->pStmt, 132 +1);
    sqlite3 *db = sqlite3_context_db_handle(ctx);
    int rc = binfoCompute(db, pgno, pCsr);
    if( rc ){
      pCursor->pVtab->zErrMsg = sqlite3_mprintf("%s", sqlite3_errmsg(db));
      return SQLITE_ERROR;
    }
  }
  switch( i ){
    case 135:
    case 128:
    case 129:
    case 132:
    case 130: {
      sqlite3_result_value(ctx, sqlite3_column_value(pCsr->pStmt, i+1));
      break;
    }
    case 136: {
      sqlite3_result_int(ctx, pCsr->hasRowid);
      break;
    }
    case 134: {
      sqlite3_result_int64(ctx, pCsr->nEntry);
      break;
    }
    case 133: {
      sqlite3_result_int(ctx, pCsr->nPage);
      break;
    }
    case 137: {
      sqlite3_result_int(ctx, pCsr->depth);
      break;
    }
    case 131: {
      sqlite3_result_text(ctx, pCsr->zSchema, -1, SQLITE_STATIC);
      break;
    }
  }
  return SQLITE_OK;
}
