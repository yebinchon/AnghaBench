
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ sqlite3MallocZero (int) ;
 int sqlite3_column_count (int *) ;
 char* sqlite3_column_name (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare (int *,char*,int,int **,int ) ;
 int sqlite3_snprintf (int,char*,char*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int getColumnNames(
  sqlite3 *db,
  const char *zTab,
  char ***paCol,
  int *pnCol
){
  char **aCol = 0;
  char *zSql;
  sqlite3_stmt *pStmt = 0;
  int rc = SQLITE_OK;
  int nCol = 0;





  zSql = sqlite3_mprintf("SELECT * FROM %Q", zTab);
  if( !zSql ){
    rc = SQLITE_NOMEM;
    goto out;
  }
  rc = sqlite3_prepare(db, zSql, -1, &pStmt, 0);
  sqlite3_free(zSql);

  if( rc==SQLITE_OK ){
    int ii;
    int nBytes;
    char *zSpace;
    nCol = sqlite3_column_count(pStmt);




    nBytes = sizeof(char *) * nCol;
    for(ii=0; ii<nCol; ii++){
      const char *zName = sqlite3_column_name(pStmt, ii);
      if( !zName ){
        rc = SQLITE_NOMEM;
        goto out;
      }
      nBytes += (int)strlen(zName)+1;
    }
    aCol = (char **)sqlite3MallocZero(nBytes);
    if( !aCol ){
      rc = SQLITE_NOMEM;
      goto out;
    }




    zSpace = (char *)(&aCol[nCol]);
    for(ii=0; ii<nCol; ii++){
      aCol[ii] = zSpace;
      sqlite3_snprintf(nBytes, zSpace, "%s", sqlite3_column_name(pStmt,ii));
      zSpace += (int)strlen(zSpace) + 1;
    }
    assert( (zSpace-nBytes)==(char *)aCol );
  }

  *paCol = aCol;
  *pnCol = nCol;

out:
  sqlite3_finalize(pStmt);
  return rc;
}
