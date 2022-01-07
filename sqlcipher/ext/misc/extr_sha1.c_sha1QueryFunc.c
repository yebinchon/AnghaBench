
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_uint64 ;
typedef int sqlite3_stmt ;
typedef double sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
typedef int SHA1Context ;






 scalar_t__ SQLITE_ROW ;

 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int hash_finish (int *,char*) ;
 int hash_init (int *) ;
 int hash_step (int *,unsigned char const*,int) ;
 int hash_step_vformat (int *,char*,int) ;
 int memcpy (int*,double*,int) ;
 unsigned char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_count (int *) ;
 double sqlite3_column_double (int *,int) ;
 double sqlite3_column_int64 (int *,int) ;
 unsigned char* sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,...) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,char const**) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 char* sqlite3_sql (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_stmt_readonly (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void sha1QueryFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  const char *zSql = (const char*)sqlite3_value_text(argv[0]);
  sqlite3_stmt *pStmt = 0;
  int nCol;
  int i;
  int rc;
  int n;
  const char *z;
  SHA1Context cx;
  char zOut[44];

  assert( argc==1 );
  if( zSql==0 ) return;
  hash_init(&cx);
  while( zSql[0] ){
    rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, &zSql);
    if( rc ){
      char *zMsg = sqlite3_mprintf("error SQL statement [%s]: %s",
                                   zSql, sqlite3_errmsg(db));
      sqlite3_finalize(pStmt);
      sqlite3_result_error(context, zMsg, -1);
      sqlite3_free(zMsg);
      return;
    }
    if( !sqlite3_stmt_readonly(pStmt) ){
      char *zMsg = sqlite3_mprintf("non-query: [%s]", sqlite3_sql(pStmt));
      sqlite3_finalize(pStmt);
      sqlite3_result_error(context, zMsg, -1);
      sqlite3_free(zMsg);
      return;
    }
    nCol = sqlite3_column_count(pStmt);
    z = sqlite3_sql(pStmt);
    n = (int)strlen(z);
    hash_step_vformat(&cx,"S%d:",n);
    hash_step(&cx,(unsigned char*)z,n);


    while( SQLITE_ROW==sqlite3_step(pStmt) ){
      hash_step(&cx,(const unsigned char*)"R",1);
      for(i=0; i<nCol; i++){
        switch( sqlite3_column_type(pStmt,i) ){
          case 129: {
            hash_step(&cx, (const unsigned char*)"N",1);
            break;
          }
          case 130: {
            sqlite3_uint64 u;
            int j;
            unsigned char x[9];
            sqlite3_int64 v = sqlite3_column_int64(pStmt,i);
            memcpy(&u, &v, 8);
            for(j=8; j>=1; j--){
              x[j] = u & 0xff;
              u >>= 8;
            }
            x[0] = 'I';
            hash_step(&cx, x, 9);
            break;
          }
          case 131: {
            sqlite3_uint64 u;
            int j;
            unsigned char x[9];
            double r = sqlite3_column_double(pStmt,i);
            memcpy(&u, &r, 8);
            for(j=8; j>=1; j--){
              x[j] = u & 0xff;
              u >>= 8;
            }
            x[0] = 'F';
            hash_step(&cx,x,9);
            break;
          }
          case 128: {
            int n2 = sqlite3_column_bytes(pStmt, i);
            const unsigned char *z2 = sqlite3_column_text(pStmt, i);
            hash_step_vformat(&cx,"T%d:",n2);
            hash_step(&cx, z2, n2);
            break;
          }
          case 132: {
            int n2 = sqlite3_column_bytes(pStmt, i);
            const unsigned char *z2 = sqlite3_column_blob(pStmt, i);
            hash_step_vformat(&cx,"B%d:",n2);
            hash_step(&cx, z2, n2);
            break;
          }
        }
      }
    }
    sqlite3_finalize(pStmt);
  }
  hash_finish(&cx, zOut);
  sqlite3_result_text(context, zOut, 40, SQLITE_TRANSIENT);
}
