
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NthValueCtx {scalar_t__ pValue; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_error_nomem (int *) ;
 scalar_t__ sqlite3_value_dup (int *) ;

__attribute__((used)) static void first_valueStepFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  struct NthValueCtx *p;
  p = (struct NthValueCtx*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p && p->pValue==0 ){
    p->pValue = sqlite3_value_dup(apArg[0]);
    if( !p->pValue ){
      sqlite3_result_error_nomem(pCtx);
    }
  }
  UNUSED_PARAMETER(nArg);
  UNUSED_PARAMETER(apArg);
}
