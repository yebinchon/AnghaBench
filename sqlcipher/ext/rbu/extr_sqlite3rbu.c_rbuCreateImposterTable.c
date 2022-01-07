
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ rc; int dbMain; } ;
typedef TYPE_1__ sqlite3rbu ;
struct TYPE_10__ {scalar_t__ eType; int iTnum; int nTblCol; char** azTblCol; int zTbl; scalar_t__* abNotNull; int * azTblType; scalar_t__* abTblPk; } ;
typedef TYPE_2__ RbuObjIter ;


 scalar_t__ RBU_PK_IPK ;
 scalar_t__ RBU_PK_VTAB ;
 scalar_t__ RBU_PK_WITHOUT_ROWID ;
 scalar_t__ SQLITE_OK ;
 int SQLITE_TESTCTRL_IMPOSTER ;
 char* rbuMPrintf (TYPE_1__*,char*,char*,char const*,...) ;
 int rbuMPrintfExec (TYPE_1__*,int ,char*,int ,char*,char*) ;
 char* rbuWithoutRowidPK (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ sqlite3_table_column_metadata (int ,char*,int ,char const*,int ,char const**,int ,int ,int ) ;
 int sqlite3_test_control (int ,int ,char*,int,int) ;

__attribute__((used)) static void rbuCreateImposterTable(sqlite3rbu *p, RbuObjIter *pIter){
  if( p->rc==SQLITE_OK && pIter->eType!=RBU_PK_VTAB ){
    int tnum = pIter->iTnum;
    const char *zComma = "";
    char *zSql = 0;
    int iCol;
    sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 1);

    for(iCol=0; p->rc==SQLITE_OK && iCol<pIter->nTblCol; iCol++){
      const char *zPk = "";
      const char *zCol = pIter->azTblCol[iCol];
      const char *zColl = 0;

      p->rc = sqlite3_table_column_metadata(
          p->dbMain, "main", pIter->zTbl, zCol, 0, &zColl, 0, 0, 0
      );

      if( pIter->eType==RBU_PK_IPK && pIter->abTblPk[iCol] ){


        zPk = "PRIMARY KEY ";
      }
      zSql = rbuMPrintf(p, "%z%s\"%w\" %s %sCOLLATE %Q%s",
          zSql, zComma, zCol, pIter->azTblType[iCol], zPk, zColl,
          (pIter->abNotNull[iCol] ? " NOT NULL" : "")
      );
      zComma = ", ";
    }

    if( pIter->eType==RBU_PK_WITHOUT_ROWID ){
      char *zPk = rbuWithoutRowidPK(p, pIter);
      if( zPk ){
        zSql = rbuMPrintf(p, "%z, %z", zSql, zPk);
      }
    }

    sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 1, tnum);
    rbuMPrintfExec(p, p->dbMain, "CREATE TABLE \"rbu_imp_%w\"(%z)%s",
        pIter->zTbl, zSql,
        (pIter->eType==RBU_PK_WITHOUT_ROWID ? " WITHOUT ROWID" : "")
    );
    sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 0);
  }
}
