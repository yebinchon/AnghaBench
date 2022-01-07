
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;
typedef int LeavesReader ;


 int MERGE_COUNT ;
 int SEGDIR_SELECT_LEVEL_STMT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int leavesReaderDestroy (int *) ;
 int leavesReaderInit (int *,int,int ,int ,char const*,int,int *) ;
 int leavesReaderReorder (int *,int) ;
 int sql_get_statement (int *,int ,int **) ;
 int sqlite3_bind_int (int *,int,int) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int leavesReadersInit(fulltext_vtab *v, int iLevel,
                             LeavesReader *pReaders, int *piReaders){
  sqlite3_stmt *s;
  int i, rc = sql_get_statement(v, SEGDIR_SELECT_LEVEL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int(s, 1, iLevel);
  if( rc!=SQLITE_OK ) return rc;

  i = 0;
  while( (rc = sqlite3_step(s))==SQLITE_ROW ){
    sqlite_int64 iStart = sqlite3_column_int64(s, 0);
    sqlite_int64 iEnd = sqlite3_column_int64(s, 1);
    const char *pRootData = sqlite3_column_blob(s, 2);
    int nRootData = sqlite3_column_bytes(s, 2);

    assert( i<MERGE_COUNT );
    rc = leavesReaderInit(v, i, iStart, iEnd, pRootData, nRootData,
                          &pReaders[i]);
    if( rc!=SQLITE_OK ) break;

    i++;
  }
  if( rc!=SQLITE_DONE ){
    while( i-->0 ){
      leavesReaderDestroy(&pReaders[i]);
    }
    return rc;
  }

  *piReaders = i;


  while( i-- ){
    leavesReaderReorder(pReaders+i, *piReaders-i);
  }
  return SQLITE_OK;
}
