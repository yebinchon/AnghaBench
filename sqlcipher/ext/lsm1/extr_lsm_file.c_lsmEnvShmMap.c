
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_3__ {int (* xShmMap ) (int *,int,int,void**) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (int *,int,int,void**) ;

int lsmEnvShmMap(
  lsm_env *pEnv,
  lsm_file *pFile,
  int iChunk,
  int sz,
  void **ppOut
){
  return pEnv->xShmMap(pFile, iChunk, sz, ppOut);
}
