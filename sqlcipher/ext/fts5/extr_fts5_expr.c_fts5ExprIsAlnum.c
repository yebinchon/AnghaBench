
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int aArr ;


 int memset (int *,int ,int) ;
 int sqlite3Fts5UnicodeCatParse (char*,int *) ;
 size_t sqlite3Fts5UnicodeCategory (int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void fts5ExprIsAlnum(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apVal
){
  int iCode;
  u8 aArr[32];
  if( nArg!=1 ){
    sqlite3_result_error(pCtx,
        "wrong number of arguments to function fts5_isalnum", -1
    );
    return;
  }
  memset(aArr, 0, sizeof(aArr));
  sqlite3Fts5UnicodeCatParse("L*", aArr);
  sqlite3Fts5UnicodeCatParse("N*", aArr);
  sqlite3Fts5UnicodeCatParse("Co", aArr);
  iCode = sqlite3_value_int(apVal[0]);
  sqlite3_result_int(pCtx, aArr[sqlite3Fts5UnicodeCategory((u32)iCode)]);
}
