
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int sqlite3 ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (char*,char const*,int) ;
 int sqlite3Fts3ErrMsg (char**,char*,int ) ;
 int sqlite3_column_count (int *) ;
 char* sqlite3_column_name (int *,int) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char*,char const*,char const*) ;
 int sqlite3_prepare (int *,char*,int,int **,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fts3ContentColumns(
  sqlite3 *db,
  const char *zDb,
  const char *zTbl,
  const char ***pazCol,
  int *pnCol,
  int *pnStr,
  char **pzErr
){
  int rc = SQLITE_OK;
  char *zSql;
  sqlite3_stmt *pStmt = 0;

  zSql = sqlite3_mprintf("SELECT * FROM %Q.%Q", zDb, zTbl);
  if( !zSql ){
    rc = SQLITE_NOMEM;
  }else{
    rc = sqlite3_prepare(db, zSql, -1, &pStmt, 0);
    if( rc!=SQLITE_OK ){
      sqlite3Fts3ErrMsg(pzErr, "%s", sqlite3_errmsg(db));
    }
  }
  sqlite3_free(zSql);

  if( rc==SQLITE_OK ){
    const char **azCol;
    sqlite3_int64 nStr = 0;
    int nCol;
    int i;




    nCol = sqlite3_column_count(pStmt);
    for(i=0; i<nCol; i++){
      const char *zCol = sqlite3_column_name(pStmt, i);
      nStr += strlen(zCol) + 1;
    }


    azCol = (const char **)sqlite3_malloc64(sizeof(char *) * nCol + nStr);
    if( azCol==0 ){
      rc = SQLITE_NOMEM;
    }else{
      char *p = (char *)&azCol[nCol];
      for(i=0; i<nCol; i++){
        const char *zCol = sqlite3_column_name(pStmt, i);
        int n = (int)strlen(zCol)+1;
        memcpy(p, zCol, n);
        azCol[i] = p;
        p += n;
      }
    }
    sqlite3_finalize(pStmt);


    *pnCol = nCol;
    *pnStr = nStr;
    *pazCol = azCol;
  }

  return rc;
}
