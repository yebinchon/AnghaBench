
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pEnv; int z; } ;
typedef TYPE_1__ LsmString ;


 int lsmFree (int ,int ) ;
 int lsmStringInit (TYPE_1__*,int ) ;

void lsmStringClear(LsmString *pStr){
  lsmFree(pStr->pEnv, pStr->z);
  lsmStringInit(pStr, pStr->pEnv);
}
