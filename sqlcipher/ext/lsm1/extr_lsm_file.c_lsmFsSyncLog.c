
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdLog; int pEnv; } ;
typedef TYPE_1__ FileSystem ;


 int assert (int ) ;
 int lsmEnvSync (int ,int ) ;

int lsmFsSyncLog(FileSystem *pFS){
  assert( pFS->fdLog );
  return lsmEnvSync(pFS->pEnv, pFS->fdLog);
}
