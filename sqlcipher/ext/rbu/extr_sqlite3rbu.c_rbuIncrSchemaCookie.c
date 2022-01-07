
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rc; int * dbMain; int zErrmsg; int * dbRbu; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ prepareAndCollectError (int *,int **,int *,char*) ;
 int rbuFinalize (TYPE_1__*,int *) ;
 scalar_t__ rbuIsVacuum (TYPE_1__*) ;
 int rbuMPrintfExec (TYPE_1__*,int *,char*,int) ;
 int sqlite3_column_int (int *,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void rbuIncrSchemaCookie(sqlite3rbu *p){
  if( p->rc==SQLITE_OK ){
    sqlite3 *dbread = (rbuIsVacuum(p) ? p->dbRbu : p->dbMain);
    int iCookie = 1000000;
    sqlite3_stmt *pStmt;

    p->rc = prepareAndCollectError(dbread, &pStmt, &p->zErrmsg,
        "PRAGMA schema_version"
    );
    if( p->rc==SQLITE_OK ){





      if( SQLITE_ROW==sqlite3_step(pStmt) ){
        iCookie = sqlite3_column_int(pStmt, 0);
      }
      rbuFinalize(p, pStmt);
    }
    if( p->rc==SQLITE_OK ){
      rbuMPrintfExec(p, p->dbMain, "PRAGMA schema_version = %d", iCookie+1);
    }
  }
}
