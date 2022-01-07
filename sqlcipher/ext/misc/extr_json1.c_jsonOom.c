
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bErr; int pCtx; } ;
typedef TYPE_1__ JsonString ;


 int jsonReset (TYPE_1__*) ;
 int sqlite3_result_error_nomem (int ) ;

__attribute__((used)) static void jsonOom(JsonString *p){
  p->bErr = 1;
  sqlite3_result_error_nomem(p->pCtx);
  jsonReset(p);
}
