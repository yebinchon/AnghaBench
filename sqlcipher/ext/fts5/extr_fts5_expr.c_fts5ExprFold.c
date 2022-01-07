
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3Fts5UnicodeFold (int,int) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void fts5ExprFold(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apVal
){
  if( nArg!=1 && nArg!=2 ){
    sqlite3_result_error(pCtx,
        "wrong number of arguments to function fts5_fold", -1
    );
  }else{
    int iCode;
    int bRemoveDiacritics = 0;
    iCode = sqlite3_value_int(apVal[0]);
    if( nArg==2 ) bRemoveDiacritics = sqlite3_value_int(apVal[1]);
    sqlite3_result_int(pCtx, sqlite3Fts5UnicodeFold(iCode, bRemoveDiacritics));
  }
}
