
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_3__ {int * pEnv; } ;
typedef TYPE_1__ FileSystem ;



lsm_env *lsmFsEnv(FileSystem *pFS){
  return pFS->pEnv;
}
