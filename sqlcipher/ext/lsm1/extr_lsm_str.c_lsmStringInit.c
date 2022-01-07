
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pStr ;
typedef int lsm_env ;
struct TYPE_4__ {int * pEnv; } ;
typedef TYPE_1__ LsmString ;


 int memset (TYPE_1__*,int ,int) ;

void lsmStringInit(LsmString *pStr, lsm_env *pEnv){
  memset(pStr, 0, sizeof(pStr[0]));
  pStr->pEnv = pEnv;
}
