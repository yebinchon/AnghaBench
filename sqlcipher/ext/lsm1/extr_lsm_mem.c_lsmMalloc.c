
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* (* xMalloc ) (TYPE_1__*,size_t) ;} ;
typedef TYPE_1__ lsm_env ;


 int assert (TYPE_1__*) ;
 void* stub1 (TYPE_1__*,size_t) ;

void *lsmMalloc(lsm_env *pEnv, size_t N){
  assert( pEnv );
  return pEnv->xMalloc(pEnv, N);
}
