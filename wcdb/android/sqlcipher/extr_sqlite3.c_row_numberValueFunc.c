
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;
typedef int i64 ;


 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_int64 (int *,int ) ;

__attribute__((used)) static void row_numberValueFunc(sqlite3_context *pCtx){
  i64 *p = (i64*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  sqlite3_result_int64(pCtx, (p ? *p : 0));
}
