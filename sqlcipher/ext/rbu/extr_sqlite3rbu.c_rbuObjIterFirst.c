
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int rc; int zErrmsg; int dbMain; int dbRbu; } ;
typedef TYPE_1__ sqlite3rbu ;
struct TYPE_10__ {int bCleanup; int pIdxIter; int pTblIter; } ;
typedef TYPE_2__ RbuObjIter ;


 int SQLITE_OK ;
 int memset (TYPE_2__*,int ,int) ;
 int prepareAndCollectError (int ,int *,int *,char*) ;
 int prepareFreeAndCollectError (int ,int *,int *,int ) ;
 scalar_t__ rbuIsVacuum (TYPE_1__*) ;
 int rbuObjIterNext (TYPE_1__*,TYPE_2__*) ;
 int sqlite3_mprintf (char*,char*) ;

__attribute__((used)) static int rbuObjIterFirst(sqlite3rbu *p, RbuObjIter *pIter){
  int rc;
  memset(pIter, 0, sizeof(RbuObjIter));

  rc = prepareFreeAndCollectError(p->dbRbu, &pIter->pTblIter, &p->zErrmsg,
    sqlite3_mprintf(
      "SELECT rbu_target_name(name, type='view') AS target, name "
      "FROM sqlite_master "
      "WHERE type IN ('table', 'view') AND target IS NOT NULL "
      " %s "
      "ORDER BY name"
  , rbuIsVacuum(p) ? "AND rootpage!=0 AND rootpage IS NOT NULL" : ""));

  if( rc==SQLITE_OK ){
    rc = prepareAndCollectError(p->dbMain, &pIter->pIdxIter, &p->zErrmsg,
        "SELECT name, rootpage, sql IS NULL OR substr(8, 6)=='UNIQUE' "
        "  FROM main.sqlite_master "
        "  WHERE type='index' AND tbl_name = ?"
    );
  }

  pIter->bCleanup = 1;
  p->rc = rc;
  return rbuObjIterNext(p, pIter);
}
