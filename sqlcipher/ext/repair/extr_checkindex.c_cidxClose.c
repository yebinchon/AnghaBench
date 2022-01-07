
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zAfterKey; struct TYPE_3__* zIdxName; int pStmt; } ;
typedef TYPE_1__ CidxCursor ;


 int SQLITE_OK ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int cidxClose(sqlite3_vtab_cursor *pCursor){
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  sqlite3_finalize(pCsr->pStmt);
  sqlite3_free(pCsr->zIdxName);
  sqlite3_free(pCsr->zAfterKey);
  sqlite3_free(pCsr);
  return SQLITE_OK;
}
