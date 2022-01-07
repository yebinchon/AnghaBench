
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 int LSM_NOMEM_BKPT ;
 int lsmFree (int *,void*) ;
 void* lsmReallocOrFree (int *,void*,size_t) ;

void *lsmReallocOrFreeRc(lsm_env *pEnv, void *p, size_t N, int *pRc){
  void *pRet = 0;
  if( *pRc ){
    lsmFree(pEnv, p);
  }else{
    pRet = lsmReallocOrFree(pEnv, p, N);
    if( !pRet ) *pRc = LSM_NOMEM_BKPT;
  }
  return pRet;
}
