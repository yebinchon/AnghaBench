
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 void* lsmMalloc (int *,size_t) ;
 int * lsm_default_env () ;

void *lsm_malloc(lsm_env *pEnv, size_t N){
  return lsmMalloc(pEnv ? pEnv : lsm_default_env(), N);
}
