
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ rc; int hasRowid; int pStmt; } ;
typedef TYPE_1__ BinfoCursor ;


 scalar_t__ SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ sqlite3_step (int ) ;

__attribute__((used)) static int binfoNext(sqlite3_vtab_cursor *pCursor){
  BinfoCursor *pCsr = (BinfoCursor *)pCursor;
  pCsr->rc = sqlite3_step(pCsr->pStmt);
  pCsr->hasRowid = -1;
  return pCsr->rc==SQLITE_ERROR ? SQLITE_ERROR : SQLITE_OK;
}
