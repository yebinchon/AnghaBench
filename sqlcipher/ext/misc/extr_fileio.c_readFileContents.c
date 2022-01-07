
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
typedef int FILE ;


 int SEEK_END ;
 int SQLITE_IOERR ;
 int SQLITE_LIMIT_LENGTH ;
 int SQLITE_TOOBIG ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (void*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int rewind (int *) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_free (void*) ;
 int sqlite3_limit (int *,int ,int) ;
 void* sqlite3_malloc64 (int) ;
 int sqlite3_result_blob64 (int *,void*,int,int (*) (void*)) ;
 int sqlite3_result_error_code (int *,int ) ;
 int sqlite3_result_error_nomem (int *) ;

__attribute__((used)) static void readFileContents(sqlite3_context *ctx, const char *zName){
  FILE *in;
  sqlite3_int64 nIn;
  void *pBuf;
  sqlite3 *db;
  int mxBlob;

  in = fopen(zName, "rb");
  if( in==0 ){

    return;
  }
  fseek(in, 0, SEEK_END);
  nIn = ftell(in);
  rewind(in);
  db = sqlite3_context_db_handle(ctx);
  mxBlob = sqlite3_limit(db, SQLITE_LIMIT_LENGTH, -1);
  if( nIn>mxBlob ){
    sqlite3_result_error_code(ctx, SQLITE_TOOBIG);
    fclose(in);
    return;
  }
  pBuf = sqlite3_malloc64( nIn ? nIn : 1 );
  if( pBuf==0 ){
    sqlite3_result_error_nomem(ctx);
    fclose(in);
    return;
  }
  if( nIn==(sqlite3_int64)fread(pBuf, 1, (size_t)nIn, in) ){
    sqlite3_result_blob64(ctx, pBuf, nIn, sqlite3_free);
  }else{
    sqlite3_result_error_code(ctx, SQLITE_IOERR);
    sqlite3_free(pBuf);
  }
  fclose(in);
}
