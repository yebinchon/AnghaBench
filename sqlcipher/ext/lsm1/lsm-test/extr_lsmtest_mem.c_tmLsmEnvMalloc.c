
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pMemCtx; } ;
typedef TYPE_1__ lsm_env ;
typedef int TmGlobal ;


 void* tmMalloc (int *,size_t) ;

__attribute__((used)) static void *tmLsmEnvMalloc(lsm_env *p, size_t n){
  return tmMalloc((TmGlobal *)(p->pMemCtx), n);
}
