
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ SQLITE_NULL ;
 int assert (int) ;
 int delta_create (char const*,int,char const*,int,char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;
 int sqlite3_result_blob (int *,char*,int,int (*) (char*)) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void deltaCreateFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *aOrig; int nOrig;
  const char *aNew; int nNew;
  char *aOut; int nOut;

  assert( argc==2 );
  if( sqlite3_value_type(argv[0])==SQLITE_NULL ) return;
  if( sqlite3_value_type(argv[1])==SQLITE_NULL ) return;
  nOrig = sqlite3_value_bytes(argv[0]);
  aOrig = (const char*)sqlite3_value_blob(argv[0]);
  nNew = sqlite3_value_bytes(argv[1]);
  aNew = (const char*)sqlite3_value_blob(argv[1]);
  aOut = sqlite3_malloc64(nNew+70);
  if( aOut==0 ){
    sqlite3_result_error_nomem(context);
  }else{
    nOut = delta_create(aOrig, nOrig, aNew, nNew, aOut);
    if( nOut<0 ){
      sqlite3_free(aOut);
      sqlite3_result_error(context, "cannot create fossil delta", -1);
    }else{
      sqlite3_result_blob(context, aOut, nOut, sqlite3_free);
    }
  }
}
