
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {int fdLog; int pEnv; } ;
struct TYPE_5__ {int n; int z; } ;
typedef TYPE_1__ LsmString ;
typedef TYPE_2__ FileSystem ;


 int assert (int ) ;
 int lsmEnvWrite (int ,int ,int ,int ,int ) ;

int lsmFsWriteLog(FileSystem *pFS, i64 iOff, LsmString *pStr){
  assert( pFS->fdLog );
  return lsmEnvWrite(pFS->pEnv, pFS->fdLog, iOff, pStr->z, pStr->n);
}
