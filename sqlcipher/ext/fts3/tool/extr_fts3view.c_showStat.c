
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int sqlite3 ;




 scalar_t__ SQLITE_ROW ;
 int getVarint (unsigned char*,int *) ;
 int * prepare (int *,char*,char const*) ;
 int printf (char*,...) ;
 scalar_t__ sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int (int *,int) ;
 int sqlite3_column_type (int *,int) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void showStat(sqlite3 *db, const char *zTab){
  sqlite3_stmt *pStmt;
  pStmt = prepare(db, "SELECT id, value FROM '%q_stat'", zTab);
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    printf("stat[%d] =", sqlite3_column_int(pStmt, 0));
    switch( sqlite3_column_type(pStmt, 1) ){
      case 128: {
        printf(" %d\n", sqlite3_column_int(pStmt, 1));
        break;
      }
      case 129: {
        unsigned char *x = (unsigned char*)sqlite3_column_blob(pStmt, 1);
        int len = sqlite3_column_bytes(pStmt, 1);
        int i = 0;
        sqlite3_int64 v;
        while( i<len ){
          i += getVarint(x, &v);
          printf(" %lld", v);
        }
        printf("\n");
        break;
      }
    }
  }
  sqlite3_finalize(pStmt);
}
