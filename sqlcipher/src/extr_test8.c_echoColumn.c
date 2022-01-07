
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef int sqlite3_stmt ;
typedef int sqlite3_context ;
typedef int echo_vtab ;
struct TYPE_5__ {int * pStmt; } ;
typedef TYPE_2__ echo_cursor ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ simulateVtabError (int *,char*) ;
 int sqlite3_column_value (int *,int) ;
 int sqlite3_data_count (int *) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int echoColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  int iCol = i + 1;
  sqlite3_stmt *pStmt = ((echo_cursor *)cur)->pStmt;

  if( simulateVtabError((echo_vtab *)(cur->pVtab), "xColumn") ){
    return SQLITE_ERROR;
  }

  if( !pStmt ){
    sqlite3_result_null(ctx);
  }else{
    assert( sqlite3_data_count(pStmt)>iCol );
    sqlite3_result_value(ctx, sqlite3_column_value(pStmt, iCol));
  }
  return SQLITE_OK;
}
