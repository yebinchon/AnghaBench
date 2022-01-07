
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zSchema; int pStmt; } ;
typedef TYPE_1__ BinfoCursor ;


 int SQLITE_OK ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int binfoClose(sqlite3_vtab_cursor *pCursor){
  BinfoCursor *pCsr = (BinfoCursor *)pCursor;
  sqlite3_finalize(pCsr->pStmt);
  sqlite3_free(pCsr->zSchema);
  sqlite3_free(pCsr);
  return SQLITE_OK;
}
