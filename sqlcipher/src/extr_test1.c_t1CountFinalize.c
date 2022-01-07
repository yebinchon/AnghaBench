
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; } ;
typedef TYPE_1__ t1CountCtx ;
typedef int sqlite3_context ;


 TYPE_1__* sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int (int *,int) ;

__attribute__((used)) static void t1CountFinalize(sqlite3_context *context){
  t1CountCtx *p;
  p = sqlite3_aggregate_context(context, sizeof(*p));
  if( p ){
    if( p->n==42 ){
      sqlite3_result_error(context, "x_count totals to 42", -1);
    }else{
      sqlite3_result_int(context, p ? p->n : 0);
    }
  }
}
