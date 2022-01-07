
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nMap; int pMap; int fdDb; int pEnv; } ;
typedef TYPE_1__ FileSystem ;


 int LSM_OK ;
 int lsmEnvRemap (int ,int ,int,int *,int *) ;

int lsmFsUnmap(FileSystem *pFS){
  int rc = LSM_OK;
  if( pFS ){
    rc = lsmEnvRemap(pFS->pEnv, pFS->fdDb, -1, &pFS->pMap, &pFS->nMap);
  }
  return rc;
}
