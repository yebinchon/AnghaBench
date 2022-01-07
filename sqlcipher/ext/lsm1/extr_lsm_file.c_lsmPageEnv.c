
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_5__ {TYPE_1__* pFS; } ;
struct TYPE_4__ {int * pEnv; } ;
typedef TYPE_2__ Page ;



lsm_env *lsmPageEnv(Page *pPg) {
  return pPg->pFS->pEnv;
}
