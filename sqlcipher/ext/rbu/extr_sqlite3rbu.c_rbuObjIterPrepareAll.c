
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {char* zErrmsg; scalar_t__ rc; int dbRbu; int dbMain; int zStateDb; } ;
typedef TYPE_1__ sqlite3rbu ;
struct TYPE_27__ {scalar_t__ bCleanup; scalar_t__ pSelect; int iTnum; char* zIdx; char* zTbl; scalar_t__ eType; int nCol; scalar_t__ pInsert; scalar_t__ pDelete; char* zDataTbl; int nTblCol; scalar_t__ abIndexed; } ;
typedef TYPE_2__ RbuObjIter ;


 scalar_t__ RBU_PK_EXTERNAL ;
 scalar_t__ RBU_PK_NONE ;
 scalar_t__ RBU_PK_VTAB ;
 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_OK ;
 int SQLITE_TESTCTRL_IMPOSTER ;
 int assert (int) ;
 void* prepareFreeAndCollectError (int ,scalar_t__*,char**,char*) ;
 int rbuCreateImposterTable (TYPE_1__*,TYPE_2__*) ;
 int rbuCreateImposterTable2 (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ rbuIsVacuum (TYPE_1__*) ;
 int rbuMPrintfExec (TYPE_1__*,int ,char*,char const*,char const*,char*,...) ;
 scalar_t__ rbuObjIterCacheTableInfo (TYPE_1__*,TYPE_2__*) ;
 char* rbuObjIterGetBindlist (TYPE_1__*,int) ;
 char* rbuObjIterGetCollist (TYPE_1__*,TYPE_2__*) ;
 char* rbuObjIterGetIndexCols (TYPE_1__*,TYPE_2__*,char**,char**,char**,int*) ;
 char* rbuObjIterGetIndexWhere (TYPE_1__*,TYPE_2__*) ;
 char* rbuObjIterGetOldlist (TYPE_1__*,TYPE_2__*,char*) ;
 char* rbuObjIterGetWhere (TYPE_1__*,TYPE_2__*) ;
 int rbuObjIterPrepareTmpInsert (TYPE_1__*,TYPE_2__*,char*,char const*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_test_control (int ,int ,char*,int,int const) ;

__attribute__((used)) static int rbuObjIterPrepareAll(
  sqlite3rbu *p,
  RbuObjIter *pIter,
  int nOffset
){
  assert( pIter->bCleanup==0 );
  if( pIter->pSelect==0 && rbuObjIterCacheTableInfo(p, pIter)==SQLITE_OK ){
    const int tnum = pIter->iTnum;
    char *zCollist = 0;
    char **pz = &p->zErrmsg;
    const char *zIdx = pIter->zIdx;
    char *zLimit = 0;

    if( nOffset ){
      zLimit = sqlite3_mprintf(" LIMIT -1 OFFSET %d", nOffset);
      if( !zLimit ) p->rc = SQLITE_NOMEM;
    }

    if( zIdx ){
      const char *zTbl = pIter->zTbl;
      char *zImposterCols = 0;
      char *zImposterPK = 0;
      char *zWhere = 0;
      char *zBind = 0;
      char *zPart = 0;
      int nBind = 0;

      assert( pIter->eType!=RBU_PK_VTAB );
      zCollist = rbuObjIterGetIndexCols(
          p, pIter, &zImposterCols, &zImposterPK, &zWhere, &nBind
      );
      zBind = rbuObjIterGetBindlist(p, nBind);
      zPart = rbuObjIterGetIndexWhere(p, pIter);


      sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 1);
      sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 1,tnum);
      rbuMPrintfExec(p, p->dbMain,
          "CREATE TABLE \"rbu_imp_%w\"( %s, PRIMARY KEY( %s ) ) WITHOUT ROWID",
          zTbl, zImposterCols, zImposterPK
      );
      sqlite3_test_control(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 0);


      pIter->nCol = nBind;
      if( p->rc==SQLITE_OK ){
        p->rc = prepareFreeAndCollectError(
            p->dbMain, &pIter->pInsert, &p->zErrmsg,
          sqlite3_mprintf("INSERT INTO \"rbu_imp_%w\" VALUES(%s)", zTbl, zBind)
        );
      }


      if( rbuIsVacuum(p)==0 && p->rc==SQLITE_OK ){
        p->rc = prepareFreeAndCollectError(
            p->dbMain, &pIter->pDelete, &p->zErrmsg,
          sqlite3_mprintf("DELETE FROM \"rbu_imp_%w\" WHERE %s", zTbl, zWhere)
        );
      }


      if( p->rc==SQLITE_OK ){
        char *zSql;
        if( rbuIsVacuum(p) ){
          zSql = sqlite3_mprintf(
              "SELECT %s, 0 AS rbu_control FROM '%q' %s ORDER BY %s%s",
              zCollist,
              pIter->zDataTbl,
              zPart, zCollist, zLimit
          );
        }else

        if( pIter->eType==RBU_PK_EXTERNAL || pIter->eType==RBU_PK_NONE ){
          zSql = sqlite3_mprintf(
              "SELECT %s, rbu_control FROM %s.'rbu_tmp_%q' %s ORDER BY %s%s",
              zCollist, p->zStateDb, pIter->zDataTbl,
              zPart, zCollist, zLimit
          );
        }else{
          zSql = sqlite3_mprintf(
              "SELECT %s, rbu_control FROM %s.'rbu_tmp_%q' %s "
              "UNION ALL "
              "SELECT %s, rbu_control FROM '%q' "
              "%s %s typeof(rbu_control)='integer' AND rbu_control!=1 "
              "ORDER BY %s%s",
              zCollist, p->zStateDb, pIter->zDataTbl, zPart,
              zCollist, pIter->zDataTbl,
              zPart,
              (zPart ? "AND" : "WHERE"),
              zCollist, zLimit
          );
        }
        p->rc = prepareFreeAndCollectError(p->dbRbu, &pIter->pSelect, pz, zSql);
      }

      sqlite3_free(zImposterCols);
      sqlite3_free(zImposterPK);
      sqlite3_free(zWhere);
      sqlite3_free(zBind);
      sqlite3_free(zPart);
    }else{
      int bRbuRowid = (pIter->eType==RBU_PK_VTAB)
                    ||(pIter->eType==RBU_PK_NONE)
                    ||(pIter->eType==RBU_PK_EXTERNAL && rbuIsVacuum(p));
      const char *zTbl = pIter->zTbl;
      const char *zWrite;

      char *zBindings = rbuObjIterGetBindlist(p, pIter->nTblCol + bRbuRowid);
      char *zWhere = rbuObjIterGetWhere(p, pIter);
      char *zOldlist = rbuObjIterGetOldlist(p, pIter, "old");
      char *zNewlist = rbuObjIterGetOldlist(p, pIter, "new");

      zCollist = rbuObjIterGetCollist(p, pIter);
      pIter->nCol = pIter->nTblCol;


      rbuCreateImposterTable(p, pIter);
      rbuCreateImposterTable2(p, pIter);
      zWrite = (pIter->eType==RBU_PK_VTAB ? "" : "rbu_imp_");


      if( p->rc==SQLITE_OK ){
        p->rc = prepareFreeAndCollectError(p->dbMain, &pIter->pInsert, pz,
            sqlite3_mprintf(
              "INSERT INTO \"%s%w\"(%s%s) VALUES(%s)",
              zWrite, zTbl, zCollist, (bRbuRowid ? ", _rowid_" : ""), zBindings
            )
        );
      }




      if( rbuIsVacuum(p)==0 && p->rc==SQLITE_OK ){
        p->rc = prepareFreeAndCollectError(p->dbMain, &pIter->pDelete, pz,
            sqlite3_mprintf(
              "DELETE FROM \"%s%w\" WHERE %s", zWrite, zTbl, zWhere
            )
        );
      }

      if( rbuIsVacuum(p)==0 && pIter->abIndexed ){
        const char *zRbuRowid = "";
        if( pIter->eType==RBU_PK_EXTERNAL || pIter->eType==RBU_PK_NONE ){
          zRbuRowid = ", rbu_rowid";
        }


        rbuMPrintfExec(p, p->dbRbu,
            "CREATE TABLE IF NOT EXISTS %s.'rbu_tmp_%q' AS "
            "SELECT *%s FROM '%q' WHERE 0;"
            , p->zStateDb, pIter->zDataTbl
            , (pIter->eType==RBU_PK_EXTERNAL ? ", 0 AS rbu_rowid" : "")
            , pIter->zDataTbl
        );

        rbuMPrintfExec(p, p->dbMain,
            "CREATE TEMP TRIGGER rbu_delete_tr BEFORE DELETE ON \"%s%w\" "
            "BEGIN "
            "  SELECT rbu_tmp_insert(3, %s);"
            "END;"

            "CREATE TEMP TRIGGER rbu_update1_tr BEFORE UPDATE ON \"%s%w\" "
            "BEGIN "
            "  SELECT rbu_tmp_insert(3, %s);"
            "END;"

            "CREATE TEMP TRIGGER rbu_update2_tr AFTER UPDATE ON \"%s%w\" "
            "BEGIN "
            "  SELECT rbu_tmp_insert(4, %s);"
            "END;",
            zWrite, zTbl, zOldlist,
            zWrite, zTbl, zOldlist,
            zWrite, zTbl, zNewlist
        );

        if( pIter->eType==RBU_PK_EXTERNAL || pIter->eType==RBU_PK_NONE ){
          rbuMPrintfExec(p, p->dbMain,
              "CREATE TEMP TRIGGER rbu_insert_tr AFTER INSERT ON \"%s%w\" "
              "BEGIN "
              "  SELECT rbu_tmp_insert(0, %s);"
              "END;",
              zWrite, zTbl, zNewlist
          );
        }

        rbuObjIterPrepareTmpInsert(p, pIter, zCollist, zRbuRowid);
      }


      if( p->rc==SQLITE_OK ){
        const char *zRbuRowid = "";
        if( bRbuRowid ){
          zRbuRowid = rbuIsVacuum(p) ? ",_rowid_ " : ",rbu_rowid";
        }
        p->rc = prepareFreeAndCollectError(p->dbRbu, &pIter->pSelect, pz,
            sqlite3_mprintf(
              "SELECT %s,%s rbu_control%s FROM '%q'%s",
              zCollist,
              (rbuIsVacuum(p) ? "0 AS " : ""),
              zRbuRowid,
              pIter->zDataTbl, zLimit
            )
        );
      }

      sqlite3_free(zWhere);
      sqlite3_free(zOldlist);
      sqlite3_free(zNewlist);
      sqlite3_free(zBindings);
    }
    sqlite3_free(zCollist);
    sqlite3_free(zLimit);
  }

  return p->rc;
}
