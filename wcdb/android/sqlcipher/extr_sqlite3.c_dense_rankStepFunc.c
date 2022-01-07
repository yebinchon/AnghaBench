
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CallCount {int nStep; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;

__attribute__((used)) static void dense_rankStepFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  struct CallCount *p;
  p = (struct CallCount*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p ) p->nStep = 1;
  UNUSED_PARAMETER(nArg);
  UNUSED_PARAMETER(apArg);
}
