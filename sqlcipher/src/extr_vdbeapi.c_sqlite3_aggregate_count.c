
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pMem; TYPE_1__* pFunc; } ;
typedef TYPE_3__ sqlite3_context ;
struct TYPE_6__ {int n; } ;
struct TYPE_5__ {scalar_t__ xFinalize; } ;


 int assert (int) ;

int sqlite3_aggregate_count(sqlite3_context *p){
  assert( p && p->pMem && p->pFunc && p->pFunc->xFinalize );
  return p->pMem->n;
}
