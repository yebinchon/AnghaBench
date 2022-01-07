
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 int lsmFree (int *,void*) ;
 int * lsm_default_env () ;

void lsm_free(lsm_env *pEnv, void *p){
  lsmFree(pEnv ? pEnv : lsm_default_env(), p);
}
