
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {int nIndex; } ;
typedef TYPE_1__ Fts3Table ;


 int FTS3_SEGCURSOR_ALL ;
 int FTS3_SEGDIR_MAXLEVEL ;
 int SQLITE_OK ;
 int SQL_SELECT_LEVEL ;
 int SQL_SELECT_LEVEL_RANGE ;
 int assert (int) ;
 int fts3SqlStmt (TYPE_1__*,int ,int **,int ) ;
 int getAbsoluteLevel (TYPE_1__*,int,int,int) ;
 int sqlite3_bind_int64 (int *,int,int ) ;

int sqlite3Fts3AllSegdirs(
  Fts3Table *p,
  int iLangid,
  int iIndex,
  int iLevel,
  sqlite3_stmt **ppStmt
){
  int rc;
  sqlite3_stmt *pStmt = 0;

  assert( iLevel==FTS3_SEGCURSOR_ALL || iLevel>=0 );
  assert( iLevel<FTS3_SEGDIR_MAXLEVEL );
  assert( iIndex>=0 && iIndex<p->nIndex );

  if( iLevel<0 ){

    rc = fts3SqlStmt(p, SQL_SELECT_LEVEL_RANGE, &pStmt, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pStmt, 1, getAbsoluteLevel(p, iLangid, iIndex, 0));
      sqlite3_bind_int64(pStmt, 2,
          getAbsoluteLevel(p, iLangid, iIndex, FTS3_SEGDIR_MAXLEVEL-1)
      );
    }
  }else{

    rc = fts3SqlStmt(p, SQL_SELECT_LEVEL, &pStmt, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pStmt, 1, getAbsoluteLevel(p, iLangid, iIndex,iLevel));
    }
  }
  *ppStmt = pStmt;
  return rc;
}
