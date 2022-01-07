
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_6__ {int n; scalar_t__ a; } ;
typedef TYPE_2__ TreeBlob ;


 int lsmFree (int ,scalar_t__) ;
 scalar_t__ lsmMallocRc (int ,int,int*) ;

__attribute__((used)) static int tblobGrow(lsm_db *pDb, TreeBlob *p, int n, int *pRc){
  if( n>p->n ){
    lsmFree(pDb->pEnv, p->a);
    p->a = lsmMallocRc(pDb->pEnv, n, pRc);
    p->n = n;
  }
  return (p->a==0);
}
