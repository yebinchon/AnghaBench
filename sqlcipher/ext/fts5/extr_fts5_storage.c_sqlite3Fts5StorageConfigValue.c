
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
struct TYPE_6__ {TYPE_1__* pConfig; int pIndex; } ;
struct TYPE_5__ {int iCookie; } ;
typedef TYPE_2__ Fts5Storage ;


 int FTS5_STMT_REPLACE_CONFIG ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int fts5StorageGetStmt (TYPE_2__*,int ,int **,int ) ;
 int sqlite3Fts5IndexSetCookie (int ,int) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_bind_value (int *,int,int *) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

int sqlite3Fts5StorageConfigValue(
  Fts5Storage *p,
  const char *z,
  sqlite3_value *pVal,
  int iVal
){
  sqlite3_stmt *pReplace = 0;
  int rc = fts5StorageGetStmt(p, FTS5_STMT_REPLACE_CONFIG, &pReplace, 0);
  if( rc==SQLITE_OK ){
    sqlite3_bind_text(pReplace, 1, z, -1, SQLITE_STATIC);
    if( pVal ){
      sqlite3_bind_value(pReplace, 2, pVal);
    }else{
      sqlite3_bind_int(pReplace, 2, iVal);
    }
    sqlite3_step(pReplace);
    rc = sqlite3_reset(pReplace);
    sqlite3_bind_null(pReplace, 1);
  }
  if( rc==SQLITE_OK && pVal ){
    int iNew = p->pConfig->iCookie + 1;
    rc = sqlite3Fts5IndexSetCookie(p->pIndex, iNew);
    if( rc==SQLITE_OK ){
      p->pConfig->iCookie = iNew;
    }
  }
  return rc;
}
