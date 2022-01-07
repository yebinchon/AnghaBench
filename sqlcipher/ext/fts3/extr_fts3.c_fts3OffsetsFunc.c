
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Fts3Cursor ;


 scalar_t__ SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 scalar_t__ fts3CursorSeek (int *,int *) ;
 scalar_t__ fts3FunctionArg (int *,char*,int *,int **) ;
 int sqlite3Fts3Offsets (int *,int *) ;

__attribute__((used)) static void fts3OffsetsFunc(
  sqlite3_context *pContext,
  int nVal,
  sqlite3_value **apVal
){
  Fts3Cursor *pCsr;

  UNUSED_PARAMETER(nVal);

  assert( nVal==1 );
  if( fts3FunctionArg(pContext, "offsets", apVal[0], &pCsr) ) return;
  assert( pCsr );
  if( SQLITE_OK==fts3CursorSeek(pContext, pCsr) ){
    sqlite3Fts3Offsets(pContext, pCsr);
  }
}
