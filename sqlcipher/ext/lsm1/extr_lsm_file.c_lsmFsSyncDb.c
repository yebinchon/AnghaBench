
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdDb; int pEnv; } ;
typedef TYPE_1__ FileSystem ;


 int lsmEnvSync (int ,int ) ;

int lsmFsSyncDb(FileSystem *pFS, int nBlock){
  return lsmEnvSync(pFS->pEnv, pFS->fdDb);
}
