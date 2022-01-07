
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {scalar_t__ pVtab; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int Fts3Table ;
typedef TYPE_2__ Fts3Cursor ;




 int SQLITE_STATIC ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 scalar_t__ fts3FunctionArg (int *,char*,int *,TYPE_2__**) ;
 int sqlite3Fts3Optimize (int *) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static void fts3OptimizeFunc(
  sqlite3_context *pContext,
  int nVal,
  sqlite3_value **apVal
){
  int rc;
  Fts3Table *p;
  Fts3Cursor *pCursor;

  UNUSED_PARAMETER(nVal);

  assert( nVal==1 );
  if( fts3FunctionArg(pContext, "optimize", apVal[0], &pCursor) ) return;
  p = (Fts3Table *)pCursor->base.pVtab;
  assert( p );

  rc = sqlite3Fts3Optimize(p);

  switch( rc ){
    case 128:
      sqlite3_result_text(pContext, "Index optimized", -1, SQLITE_STATIC);
      break;
    case 129:
      sqlite3_result_text(pContext, "Index already optimal", -1, SQLITE_STATIC);
      break;
    default:
      sqlite3_result_error_code(pContext, rc);
      break;
  }
}
