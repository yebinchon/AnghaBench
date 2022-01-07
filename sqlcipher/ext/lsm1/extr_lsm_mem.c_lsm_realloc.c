
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 void* lsmRealloc (int *,void*,size_t) ;
 int * lsm_default_env () ;

void *lsm_realloc(lsm_env *pEnv, void *p, size_t N){
  return lsmRealloc(pEnv ? pEnv : lsm_default_env(), p, N);
}
