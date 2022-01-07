
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LastValueCtx {scalar_t__ pVal; int nVal; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_error_nomem (int *) ;
 scalar_t__ sqlite3_value_dup (int *) ;
 int sqlite3_value_free (scalar_t__) ;

__attribute__((used)) static void last_valueStepFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  struct LastValueCtx *p;
  UNUSED_PARAMETER(nArg);
  p = (struct LastValueCtx*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p ){
    sqlite3_value_free(p->pVal);
    p->pVal = sqlite3_value_dup(apArg[0]);
    if( p->pVal==0 ){
      sqlite3_result_error_nomem(pCtx);
    }else{
      p->nVal++;
    }
  }
}
