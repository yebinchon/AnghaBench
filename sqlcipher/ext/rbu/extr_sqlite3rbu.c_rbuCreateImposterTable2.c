
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ rc; int dbMain; int zErrmsg; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;
struct TYPE_9__ {scalar_t__ eType; int iPkTnum; int * azTblType; } ;
typedef TYPE_2__ RbuObjIter ;


 scalar_t__ RBU_PK_EXTERNAL ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_TESTCTRL_IMPOSTER ;
 scalar_t__ prepareAndCollectError (int ,int **,int *,char*) ;
 scalar_t__ prepareFreeAndCollectError (int ,int **,int *,int ) ;
 int rbuFinalize (TYPE_1__*,int *) ;
 char* rbuMPrintf (TYPE_1__*,char*,char*,...) ;
 int rbuMPrintfExec (TYPE_1__*,int ,char*,char*,char*) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_test_control (int ,int ,char*,int,int) ;

__attribute__((used)) static void rbuCreateImposterTable2(sqlite3rbu *p, RbuObjIter *pIter){
  if( p->rc==SQLITE_OK && pIter->eType==RBU_PK_EXTERNAL ){
    int tnum = pIter->iPkTnum;
    sqlite3_stmt *pQuery = 0;
    const char *zIdx = 0;
    sqlite3_stmt *pXInfo = 0;
    const char *zComma = "";
    char *zCols = 0;
    char *zPk = 0;




    p->rc = prepareAndCollectError(p->dbMain, &pQuery, &p->zErrmsg,
        "SELECT name FROM sqlite_master WHERE rootpage = ?"
    );
    if( p->rc==SQLITE_OK ){
      sqlite3_bind_int(pQuery, 1, tnum);
      if( SQLITE_ROW==sqlite3_step(pQuery) ){
        zIdx = (const char*)sqlite3_column_text(pQuery, 0);
      }
    }
    if( zIdx ){
      p->rc = prepareFreeAndCollectError(p->dbMain, &pXInfo, &p->zErrmsg,
          sqlite3_mprintf("PRAGMA main.index_xinfo = %Q", zIdx)
      );
    }
    rbuFinalize(p, pQuery);

    while( p->rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pXInfo) ){
      int bKey = sqlite3_column_int(pXInfo, 5);
      if( bKey ){
        int iCid = sqlite3_column_int(pXInfo, 1);
        int bDesc = sqlite3_column_int(pXInfo, 3);
        const char *zCollate = (const char*)sqlite3_column_text(pXInfo, 4);
        zCols = rbuMPrintf(p, "%z%sc%d %s COLLATE %Q", zCols, zComma,
            iCid, pIter->azTblType[iCid], zCollate
        );
        zPk = rbuMPrintf(p, "%z%sc%d%s", zPk, zComma, iCid, bDesc?" DESC":"");
        zComma = ", ";
      }
    }
    zCols = rbuMPrintf(p, "%z, id INTEGER", zCols);
    rbuFinalize(p, pXInfo);

    sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 1, tnum);
    rbuMPrintfExec(p, p->dbMain,
        "CREATE TABLE rbu_imposter2(%z, PRIMARY KEY(%z)) WITHOUT ROWID",
        zCols, zPk
    );
    sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 0);
  }
}
