
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef int sqlite3_stmt ;
typedef int echo_vtab ;
struct TYPE_5__ {int * pStmt; } ;
typedef TYPE_2__ echo_cursor ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ simulateVtabError (int *,char*) ;
 int sqlite3_column_int64 (int *,int ) ;

__attribute__((used)) static int echoRowid(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  sqlite3_stmt *pStmt = ((echo_cursor *)cur)->pStmt;

  if( simulateVtabError((echo_vtab *)(cur->pVtab), "xRowid") ){
    return SQLITE_ERROR;
  }

  *pRowid = sqlite3_column_int64(pStmt, 0);
  return SQLITE_OK;
}
