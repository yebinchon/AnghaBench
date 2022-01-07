
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef scalar_t__ UErrorCode ;
typedef char UChar ;


 int SQLITE_STATIC ;
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ;
 scalar_t__ U_SUCCESS (scalar_t__) ;
 scalar_t__ U_ZERO_ERROR ;
 int assert (int) ;
 int icuFunctionError (int *,char*,scalar_t__) ;
 int sqlite3_free (char*) ;
 char* sqlite3_realloc (char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text16 (int *,char*,int,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_bytes16 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 char* sqlite3_value_text16 (int *) ;
 int u_strToLower (char*,int,char const*,int,char const*,scalar_t__*) ;
 int u_strToUpper (char*,int,char const*,int,char const*,scalar_t__*) ;
 int xFree ;

__attribute__((used)) static void icuCaseFunc16(sqlite3_context *p, int nArg, sqlite3_value **apArg){
  const UChar *zInput;
  UChar *zOutput = 0;
  int nInput;
  int nOut;
  int cnt;
  int bToUpper;
  UErrorCode status;
  const char *zLocale = 0;

  assert(nArg==1 || nArg==2);
  bToUpper = (sqlite3_user_data(p)!=0);
  if( nArg==2 ){
    zLocale = (const char *)sqlite3_value_text(apArg[1]);
  }

  zInput = sqlite3_value_text16(apArg[0]);
  if( !zInput ){
    return;
  }
  nOut = nInput = sqlite3_value_bytes16(apArg[0]);
  if( nOut==0 ){
    sqlite3_result_text16(p, "", 0, SQLITE_STATIC);
    return;
  }

  for(cnt=0; cnt<2; cnt++){
    UChar *zNew = sqlite3_realloc(zOutput, nOut);
    if( zNew==0 ){
      sqlite3_free(zOutput);
      sqlite3_result_error_nomem(p);
      return;
    }
    zOutput = zNew;
    status = U_ZERO_ERROR;
    if( bToUpper ){
      nOut = 2*u_strToUpper(zOutput,nOut/2,zInput,nInput/2,zLocale,&status);
    }else{
      nOut = 2*u_strToLower(zOutput,nOut/2,zInput,nInput/2,zLocale,&status);
    }

    if( U_SUCCESS(status) ){
      sqlite3_result_text16(p, zOutput, nOut, xFree);
    }else if( status==U_BUFFER_OVERFLOW_ERROR ){
      assert( cnt==0 );
      continue;
    }else{
      icuFunctionError(p, bToUpper ? "u_strToUpper" : "u_strToLower", status);
    }
    return;
  }
  assert( 0 );
}
