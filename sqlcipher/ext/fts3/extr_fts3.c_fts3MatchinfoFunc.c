
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Fts3Cursor ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 scalar_t__ fts3FunctionArg (int *,char*,int *,int **) ;
 int sqlite3Fts3Matchinfo (int *,int *,char const*) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void fts3MatchinfoFunc(
  sqlite3_context *pContext,
  int nVal,
  sqlite3_value **apVal
){
  Fts3Cursor *pCsr;
  assert( nVal==1 || nVal==2 );
  if( SQLITE_OK==fts3FunctionArg(pContext, "matchinfo", apVal[0], &pCsr) ){
    const char *zArg = 0;
    if( nVal>1 ){
      zArg = (const char *)sqlite3_value_text(apVal[1]);
    }
    sqlite3Fts3Matchinfo(pContext, pCsr, zArg);
  }
}
