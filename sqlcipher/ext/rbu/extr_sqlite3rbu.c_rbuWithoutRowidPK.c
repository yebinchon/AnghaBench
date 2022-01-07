
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rc; int zErrmsg; int dbMain; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_stmt ;
struct TYPE_8__ {scalar_t__ zIdx; char const* zTbl; } ;
typedef TYPE_2__ RbuObjIter ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int) ;
 void* prepareFreeAndCollectError (int ,int **,int *,int ) ;
 int rbuFinalize (TYPE_1__*,int *) ;
 char* rbuMPrintf (TYPE_1__*,char*,char*,...) ;
 scalar_t__ sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static char *rbuWithoutRowidPK(sqlite3rbu *p, RbuObjIter *pIter){
  char *z = 0;
  assert( pIter->zIdx==0 );
  if( p->rc==SQLITE_OK ){
    const char *zSep = "PRIMARY KEY(";
    sqlite3_stmt *pXList = 0;
    sqlite3_stmt *pXInfo = 0;

    p->rc = prepareFreeAndCollectError(p->dbMain, &pXList, &p->zErrmsg,
        sqlite3_mprintf("PRAGMA main.index_list = %Q", pIter->zTbl)
    );
    while( p->rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pXList) ){
      const char *zOrig = (const char*)sqlite3_column_text(pXList,3);
      if( zOrig && strcmp(zOrig, "pk")==0 ){
        const char *zIdx = (const char*)sqlite3_column_text(pXList,1);
        if( zIdx ){
          p->rc = prepareFreeAndCollectError(p->dbMain, &pXInfo, &p->zErrmsg,
              sqlite3_mprintf("PRAGMA main.index_xinfo = %Q", zIdx)
          );
        }
        break;
      }
    }
    rbuFinalize(p, pXList);

    while( p->rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pXInfo) ){
      if( sqlite3_column_int(pXInfo, 5) ){

        const char *zCol = (const char*)sqlite3_column_text(pXInfo, 2);
        const char *zDesc = sqlite3_column_int(pXInfo, 3) ? " DESC" : "";
        z = rbuMPrintf(p, "%z%s\"%w\"%s", z, zSep, zCol, zDesc);
        zSep = ", ";
      }
    }
    z = rbuMPrintf(p, "%z)", z);
    rbuFinalize(p, pXInfo);
  }
  return z;
}
