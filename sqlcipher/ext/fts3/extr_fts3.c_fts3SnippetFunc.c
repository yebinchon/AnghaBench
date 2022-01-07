
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Fts3Cursor ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_STATIC ;
 int assert (int) ;
 scalar_t__ fts3CursorSeek (int *,int *) ;
 scalar_t__ fts3FunctionArg (int *,char*,int *,int **) ;
 int sqlite3Fts3Snippet (int *,int *,char const*,char const*,char const*,int,int) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void fts3SnippetFunc(
  sqlite3_context *pContext,
  int nVal,
  sqlite3_value **apVal
){
  Fts3Cursor *pCsr;
  const char *zStart = "<b>";
  const char *zEnd = "</b>";
  const char *zEllipsis = "<b>...</b>";
  int iCol = -1;
  int nToken = 15;




  assert( nVal>=1 );

  if( nVal>6 ){
    sqlite3_result_error(pContext,
        "wrong number of arguments to function snippet()", -1);
    return;
  }
  if( fts3FunctionArg(pContext, "snippet", apVal[0], &pCsr) ) return;

  switch( nVal ){
    case 6: nToken = sqlite3_value_int(apVal[5]);
    case 5: iCol = sqlite3_value_int(apVal[4]);
    case 4: zEllipsis = (const char*)sqlite3_value_text(apVal[3]);
    case 3: zEnd = (const char*)sqlite3_value_text(apVal[2]);
    case 2: zStart = (const char*)sqlite3_value_text(apVal[1]);
  }
  if( !zEllipsis || !zEnd || !zStart ){
    sqlite3_result_error_nomem(pContext);
  }else if( nToken==0 ){
    sqlite3_result_text(pContext, "", -1, SQLITE_STATIC);
  }else if( SQLITE_OK==fts3CursorSeek(pContext, pCsr) ){
    sqlite3Fts3Snippet(pContext, pCsr, zStart, zEnd, zEllipsis, iCol, nToken);
  }
}
