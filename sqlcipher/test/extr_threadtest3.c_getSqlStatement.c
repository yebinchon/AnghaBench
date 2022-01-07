
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pCache; int db; } ;
struct TYPE_7__ {struct TYPE_7__* pNext; int pStmt; } ;
typedef TYPE_1__ Statement ;
typedef TYPE_2__ Sqlite ;
typedef int Error ;


 int SQLITE_OK ;
 int assert (int) ;
 TYPE_1__* sqlite3_malloc (int) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int *,int ) ;
 int sqlite3_sql (int ) ;
 int sqlite_error (int *,TYPE_2__*,char*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static Statement *getSqlStatement(
  Error *pErr,
  Sqlite *pDb,
  const char *zSql
){
  Statement *pRet;
  int rc;

  for(pRet=pDb->pCache; pRet; pRet=pRet->pNext){
    if( 0==strcmp(sqlite3_sql(pRet->pStmt), zSql) ){
      return pRet;
    }
  }

  pRet = sqlite3_malloc(sizeof(Statement));
  rc = sqlite3_prepare_v2(pDb->db, zSql, -1, &pRet->pStmt, 0);
  if( rc!=SQLITE_OK ){
    sqlite_error(pErr, pDb, "prepare_v2");
    return 0;
  }
  assert( 0==strcmp(sqlite3_sql(pRet->pStmt), zSql) );

  pRet->pNext = pDb->pCache;
  pDb->pCache = pRet;
  return pRet;
}
