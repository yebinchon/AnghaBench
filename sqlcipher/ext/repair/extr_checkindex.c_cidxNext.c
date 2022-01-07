
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3 ;
struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_7__ {int iRowid; TYPE_1__ base; scalar_t__ pStmt; } ;
struct TYPE_6__ {int * db; } ;
typedef TYPE_2__ CidxTable ;
typedef TYPE_3__ CidxCursor ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 int cidxCursorError (TYPE_3__*,char*,int ) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_step (scalar_t__) ;

__attribute__((used)) static int cidxNext(sqlite3_vtab_cursor *pCursor){
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  int rc = sqlite3_step(pCsr->pStmt);
  if( rc!=SQLITE_ROW ){
    rc = sqlite3_finalize(pCsr->pStmt);
    pCsr->pStmt = 0;
    if( rc!=SQLITE_OK ){
      sqlite3 *db = ((CidxTable*)pCsr->base.pVtab)->db;
      cidxCursorError(pCsr, "Cursor error: %s", sqlite3_errmsg(db));
    }
  }else{
    pCsr->iRowid++;
    rc = SQLITE_OK;
  }
  return rc;
}
