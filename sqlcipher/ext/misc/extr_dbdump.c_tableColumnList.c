
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int azCol ;
struct TYPE_3__ {int rc; int nErr; int db; } ;
typedef TYPE_1__ DState ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int freeColumnList (char**) ;
 scalar_t__ sqlite3_column_int (int *,int) ;
 char const* sqlite3_column_text (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 char** sqlite3_realloc64 (char**,int) ;
 int sqlite3_step (int *) ;
 scalar_t__ sqlite3_stricmp (char const*,char*) ;
 int sqlite3_table_column_metadata (int ,int ,char const*,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static char **tableColumnList(DState *p, const char *zTab){
  char **azCol = 0;
  sqlite3_stmt *pStmt = 0;
  char *zSql;
  int nCol = 0;
  int nAlloc = 0;
  int nPK = 0;
  int isIPK = 0;
  int preserveRowid = 1;
  int rc;

  zSql = sqlite3_mprintf("PRAGMA table_info=%Q", zTab);
  if( zSql==0 ) return 0;
  rc = sqlite3_prepare_v2(p->db, zSql, -1, &pStmt, 0);
  sqlite3_free(zSql);
  if( rc ) return 0;
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    if( nCol>=nAlloc-2 ){
      char **azNew;
      nAlloc = nAlloc*2 + nCol + 10;
      azNew = sqlite3_realloc64(azCol, nAlloc*sizeof(azCol[0]));
      if( azNew==0 ) goto col_oom;
      azCol = azNew;
      azCol[0] = 0;
    }
    azCol[++nCol] = sqlite3_mprintf("%s", sqlite3_column_text(pStmt, 1));
    if( azCol[nCol]==0 ) goto col_oom;
    if( sqlite3_column_int(pStmt, 5) ){
      nPK++;
      if( nPK==1
       && sqlite3_stricmp((const char*)sqlite3_column_text(pStmt,2),
                          "INTEGER")==0
      ){
        isIPK = 1;
      }else{
        isIPK = 0;
      }
    }
  }
  sqlite3_finalize(pStmt);
  pStmt = 0;
  azCol[nCol+1] = 0;







  if( isIPK ){







    zSql = sqlite3_mprintf("SELECT 1 FROM pragma_index_list(%Q)"
                           " WHERE origin='pk'", zTab);
    if( zSql==0 ) goto col_oom;
    rc = sqlite3_prepare_v2(p->db, zSql, -1, &pStmt, 0);
    sqlite3_free(zSql);
    if( rc ){
      freeColumnList(azCol);
      return 0;
    }
    rc = sqlite3_step(pStmt);
    sqlite3_finalize(pStmt);
    pStmt = 0;
    preserveRowid = rc==SQLITE_ROW;
  }
  if( preserveRowid ){


    static char *azRowid[] = { "rowid", "_rowid_", "oid" };
    int i, j;
    for(j=0; j<3; j++){
      for(i=1; i<=nCol; i++){
        if( sqlite3_stricmp(azRowid[j],azCol[i])==0 ) break;
      }
      if( i>nCol ){




        rc = sqlite3_table_column_metadata(p->db,0,zTab,azRowid[j],0,0,0,0,0);
        if( rc==SQLITE_OK ) azCol[0] = azRowid[j];
        break;
      }
    }
  }
  return azCol;

col_oom:
  sqlite3_finalize(pStmt);
  freeColumnList(azCol);
  p->nErr++;
  p->rc = SQLITE_NOMEM;
  return 0;
}
