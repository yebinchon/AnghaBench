
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_6__ {int a; } ;
typedef TYPE_2__ TreeBlob ;


 int lsmFree (int ,int ) ;

__attribute__((used)) static void tblobFree(lsm_db *pDb, TreeBlob *p){
  lsmFree(pDb->pEnv, p->a);
}
