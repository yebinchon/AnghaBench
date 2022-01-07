
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_3__ {int (* xRemap ) (int *,int ,void**,int *) ;} ;
typedef TYPE_1__ lsm_env ;
typedef int i64 ;


 int stub1 (int *,int ,void**,int *) ;

__attribute__((used)) static int lsmEnvRemap(
  lsm_env *pEnv,
  lsm_file *pFile,
  i64 szMin,
  void **ppMap,
  i64 *pszMap
){
  return pEnv->xRemap(pFile, szMin, ppMap, pszMap);
}
