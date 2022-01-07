
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {int bInverse; int n; } ;
typedef TYPE_1__ CountCtx ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 scalar_t__ SQLITE_NULL ;
 TYPE_1__* sqlite3_aggregate_context (int *,int) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void countInverse(sqlite3_context *ctx, int argc, sqlite3_value **argv){
  CountCtx *p;
  p = sqlite3_aggregate_context(ctx, sizeof(*p));

  if( (argc==0 || SQLITE_NULL!=sqlite3_value_type(argv[0])) && ALWAYS(p) ){
    p->n--;



  }
}
