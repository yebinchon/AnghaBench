
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;



 int SQLITE_DONE ;



 int SQLITE_OK ;
 int SQLITE_ROW ;

 int eVerbosity ;
 int fflush (int ) ;
 scalar_t__ isspace (char const) ;
 int printf (char*,...) ;
 int putchar (unsigned char const) ;
 scalar_t__ sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_count (int *) ;
 char* sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 int sqlite3_step (int *) ;
 int stdout ;

__attribute__((used)) static int runDbSql(sqlite3 *db, const char *zSql){
  int rc;
  sqlite3_stmt *pStmt;
  while( isspace(zSql[0]&0x7f) ) zSql++;
  if( zSql[0]==0 ) return SQLITE_OK;
  if( eVerbosity>=4 ){
    printf("RUNNING-SQL: [%s]\n", zSql);
    fflush(stdout);
  }
  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
  if( rc==SQLITE_OK ){
    while( (rc = sqlite3_step(pStmt))==SQLITE_ROW ){
      if( eVerbosity>=5 ){
        int j;
        for(j=0; j<sqlite3_column_count(pStmt); j++){
          if( j ) printf(",");
          switch( sqlite3_column_type(pStmt, j) ){
            case 129: {
              printf("NULL");
              break;
            }
            case 130:
            case 131: {
              printf("%s", sqlite3_column_text(pStmt, j));
              break;
            }
            case 132: {
              int n = sqlite3_column_bytes(pStmt, j);
              int i;
              const unsigned char *a;
              a = (const unsigned char*)sqlite3_column_blob(pStmt, j);
              printf("x'");
              for(i=0; i<n; i++){
                printf("%02x", a[i]);
              }
              printf("'");
              break;
            }
            case 128: {
              int n = sqlite3_column_bytes(pStmt, j);
              int i;
              const unsigned char *a;
              a = (const unsigned char*)sqlite3_column_blob(pStmt, j);
              printf("'");
              for(i=0; i<n; i++){
                if( a[i]=='\'' ){
                  printf("''");
                }else{
                  putchar(a[i]);
                }
              }
              printf("'");
              break;
            }
          }
        }
        printf("\n");
        fflush(stdout);
      }
    }
    if( rc!=SQLITE_DONE && eVerbosity>=4 ){
      printf("SQL-ERROR: (%d) %s\n", rc, sqlite3_errmsg(db));
      fflush(stdout);
    }
  }else if( eVerbosity>=4 ){
    printf("SQL-ERROR (%d): %s\n", rc, sqlite3_errmsg(db));
    fflush(stdout);
  }
  return sqlite3_finalize(pStmt);
}
