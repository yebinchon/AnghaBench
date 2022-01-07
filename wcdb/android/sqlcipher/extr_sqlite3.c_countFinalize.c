
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_3__ {int n; } ;
typedef TYPE_1__ CountCtx ;


 TYPE_1__* sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_result_int64 (int *,int ) ;

__attribute__((used)) static void countFinalize(sqlite3_context *context){
  CountCtx *p;
  p = sqlite3_aggregate_context(context, 0);
  sqlite3_result_int64(context, p ? p->n : 0);
}
