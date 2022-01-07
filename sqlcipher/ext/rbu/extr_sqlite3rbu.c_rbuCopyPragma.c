
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rc; int dbMain; int zErrmsg; int dbRbu; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ prepareFreeAndCollectError (int ,int **,int *,int ) ;
 int rbuFinalize (TYPE_1__*,int *) ;
 scalar_t__ rbuMPrintfExec (TYPE_1__*,int ,char*,char const*,int ) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void rbuCopyPragma(sqlite3rbu *p, const char *zPragma){
  if( p->rc==SQLITE_OK ){
    sqlite3_stmt *pPragma = 0;
    p->rc = prepareFreeAndCollectError(p->dbRbu, &pPragma, &p->zErrmsg,
        sqlite3_mprintf("PRAGMA main.%s", zPragma)
    );
    if( p->rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pPragma) ){
      p->rc = rbuMPrintfExec(p, p->dbMain, "PRAGMA main.%s = %d",
          zPragma, sqlite3_column_int(pPragma, 0)
      );
    }
    rbuFinalize(p, pPragma);
  }
}
