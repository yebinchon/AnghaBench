
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_3__ {char* zIdxName; char* zAfterKey; int pStmt; } ;
typedef TYPE_1__ CidxCursor ;







 int SQLITE_INTEGER ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int cidxGenerateScanSql (TYPE_1__*,char*,char*,char**) ;
 int sqlite3_column_int (int ,int ) ;
 int sqlite3_column_type (int ,int ) ;
 int sqlite3_column_value (int ,int) ;
 int sqlite3_free ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int cidxColumn(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *ctx,
  int iCol
){
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  assert( iCol>=130 && iCol<=128 );
  switch( iCol ){
    case 130: {
      const char *zVal = 0;
      if( sqlite3_column_type(pCsr->pStmt, 0)==SQLITE_INTEGER ){
        if( sqlite3_column_int(pCsr->pStmt, 0)==0 ){
          zVal = "row data mismatch";
        }
      }else{
        zVal = "row missing";
      }
      sqlite3_result_text(ctx, zVal, -1, SQLITE_STATIC);
      break;
    }
    case 131: {
      sqlite3_result_value(ctx, sqlite3_column_value(pCsr->pStmt, 1));
      break;
    }
    case 129: {
      sqlite3_result_text(ctx, pCsr->zIdxName, -1, SQLITE_TRANSIENT);
      break;
    }
    case 132: {
      sqlite3_result_text(ctx, pCsr->zAfterKey, -1, SQLITE_TRANSIENT);
      break;
    }
    case 128: {
      char *zSql = 0;
      cidxGenerateScanSql(pCsr, pCsr->zIdxName, pCsr->zAfterKey, &zSql);
      sqlite3_result_text(ctx, zSql, -1, sqlite3_free);
      break;
    }
  }
  return SQLITE_OK;
}
