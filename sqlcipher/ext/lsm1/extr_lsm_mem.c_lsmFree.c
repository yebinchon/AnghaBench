
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xFree ) (TYPE_1__*,void*) ;} ;
typedef TYPE_1__ lsm_env ;


 int assert (TYPE_1__*) ;
 int stub1 (TYPE_1__*,void*) ;

void lsmFree(lsm_env *pEnv, void *p){
  assert( pEnv );
  pEnv->xFree(pEnv, p);
}
