
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 int assert (int *) ;
 void* lsmMalloc (int *,size_t) ;
 int memset (void*,int ,size_t) ;

void *lsmMallocZero(lsm_env *pEnv, size_t N){
  void *pRet;
  assert( pEnv );
  pRet = lsmMalloc(pEnv, N);
  if( pRet ) memset(pRet, 0, N);
  return pRet;
}
