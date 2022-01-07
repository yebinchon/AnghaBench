
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pEnv; int zDb; scalar_t__ fdLog; } ;
typedef TYPE_1__ FileSystem ;


 int LSM_OK ;
 int lsmEnvClose (int ,scalar_t__) ;
 int lsmEnvUnlink (int ,char*) ;
 int lsmFree (int ,char*) ;
 char* lsmMallocPrintf (int ,char*,int ) ;

int lsmFsCloseAndDeleteLog(FileSystem *pFS){
  char *zDel;

  if( pFS->fdLog ){
    lsmEnvClose(pFS->pEnv, pFS->fdLog );
    pFS->fdLog = 0;
  }

  zDel = lsmMallocPrintf(pFS->pEnv, "%s-log", pFS->zDb);
  if( zDel ){
    lsmEnvUnlink(pFS->pEnv, zDel);
    lsmFree(pFS->pEnv, zDel);
  }
  return LSM_OK;
}
