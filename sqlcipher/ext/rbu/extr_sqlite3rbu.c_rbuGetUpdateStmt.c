
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int rc; int zErrmsg; int dbMain; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;
struct TYPE_13__ {scalar_t__ eType; int zTbl; TYPE_2__* pRbuUpdate; int nTblCol; } ;
struct TYPE_12__ {char* zMask; int * pUpdate; struct TYPE_12__* pNext; } ;
typedef TYPE_2__ RbuUpdateStmt ;
typedef TYPE_3__ RbuObjIter ;


 scalar_t__ RBU_PK_VTAB ;
 int SQLITE_OK ;
 int SQLITE_RBU_UPDATE_CACHESIZE ;
 int assert (int) ;
 int memcpy (char*,char const*,int ) ;
 int prepareFreeAndCollectError (int ,int **,int *,char*) ;
 scalar_t__ rbuMalloc (TYPE_1__*,scalar_t__) ;
 char* rbuObjIterGetSetlist (TYPE_1__*,TYPE_3__*,char const*) ;
 char* rbuObjIterGetWhere (TYPE_1__*,TYPE_3__*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,int ,char*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int rbuGetUpdateStmt(
  sqlite3rbu *p,
  RbuObjIter *pIter,
  const char *zMask,
  sqlite3_stmt **ppStmt
){
  RbuUpdateStmt **pp;
  RbuUpdateStmt *pUp = 0;
  int nUp = 0;


  *ppStmt = 0;





  for(pp=&pIter->pRbuUpdate; *pp; pp=&((*pp)->pNext)){
    pUp = *pp;
    if( strcmp(pUp->zMask, zMask)==0 ){
      *pp = pUp->pNext;
      pUp->pNext = pIter->pRbuUpdate;
      pIter->pRbuUpdate = pUp;
      *ppStmt = pUp->pUpdate;
      return SQLITE_OK;
    }
    nUp++;
  }
  assert( pUp==0 || pUp->pNext==0 );

  if( nUp>=SQLITE_RBU_UPDATE_CACHESIZE ){
    for(pp=&pIter->pRbuUpdate; *pp!=pUp; pp=&((*pp)->pNext));
    *pp = 0;
    sqlite3_finalize(pUp->pUpdate);
    pUp->pUpdate = 0;
  }else{
    pUp = (RbuUpdateStmt*)rbuMalloc(p, sizeof(RbuUpdateStmt)+pIter->nTblCol+1);
  }

  if( pUp ){
    char *zWhere = rbuObjIterGetWhere(p, pIter);
    char *zSet = rbuObjIterGetSetlist(p, pIter, zMask);
    char *zUpdate = 0;

    pUp->zMask = (char*)&pUp[1];
    memcpy(pUp->zMask, zMask, pIter->nTblCol);
    pUp->pNext = pIter->pRbuUpdate;
    pIter->pRbuUpdate = pUp;

    if( zSet ){
      const char *zPrefix = "";

      if( pIter->eType!=RBU_PK_VTAB ) zPrefix = "rbu_imp_";
      zUpdate = sqlite3_mprintf("UPDATE \"%s%w\" SET %s WHERE %s",
          zPrefix, pIter->zTbl, zSet, zWhere
      );
      p->rc = prepareFreeAndCollectError(
          p->dbMain, &pUp->pUpdate, &p->zErrmsg, zUpdate
      );
      *ppStmt = pUp->pUpdate;
    }
    sqlite3_free(zWhere);
    sqlite3_free(zSet);
  }

  return p->rc;
}
