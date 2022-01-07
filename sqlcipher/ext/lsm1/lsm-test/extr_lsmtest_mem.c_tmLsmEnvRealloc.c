
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pMemCtx; } ;
typedef TYPE_1__ lsm_env ;
typedef int TmGlobal ;


 void* tmRealloc (int *,void*,size_t) ;

__attribute__((used)) static void *tmLsmEnvRealloc(lsm_env *p, void *ptr, size_t n){
  return tmRealloc((TmGlobal *)(p->pMemCtx), ptr, n);
}
