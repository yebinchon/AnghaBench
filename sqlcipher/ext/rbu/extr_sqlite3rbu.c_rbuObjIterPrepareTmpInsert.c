
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zStateDb; int zErrmsg; int dbRbu; int rc; } ;
typedef TYPE_1__ sqlite3rbu ;
struct TYPE_7__ {scalar_t__ eType; scalar_t__ pTmpInsert; int zDataTbl; scalar_t__ nTblCol; } ;
typedef TYPE_2__ RbuObjIter ;


 scalar_t__ RBU_PK_EXTERNAL ;
 scalar_t__ RBU_PK_NONE ;
 int assert (int) ;
 int prepareFreeAndCollectError (int ,scalar_t__*,int *,int ) ;
 char* rbuObjIterGetBindlist (TYPE_1__*,scalar_t__) ;
 int sqlite3_mprintf (char*,int ,int ,char const*,char const*,char*) ;

__attribute__((used)) static void rbuObjIterPrepareTmpInsert(
  sqlite3rbu *p,
  RbuObjIter *pIter,
  const char *zCollist,
  const char *zRbuRowid
){
  int bRbuRowid = (pIter->eType==RBU_PK_EXTERNAL || pIter->eType==RBU_PK_NONE);
  char *zBind = rbuObjIterGetBindlist(p, pIter->nTblCol + 1 + bRbuRowid);
  if( zBind ){
    assert( pIter->pTmpInsert==0 );
    p->rc = prepareFreeAndCollectError(
        p->dbRbu, &pIter->pTmpInsert, &p->zErrmsg, sqlite3_mprintf(
          "INSERT INTO %s.'rbu_tmp_%q'(rbu_control,%s%s) VALUES(%z)",
          p->zStateDb, pIter->zDataTbl, zCollist, zRbuRowid, zBind
    ));
  }
}
