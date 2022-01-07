
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pMemCtx; } ;
typedef TYPE_1__ lsm_env ;
typedef int TmGlobal ;
typedef int FILE ;


 int tmMallocCheck (int *,int*,int*,int *) ;

void testMallocCheck(
  lsm_env *pEnv,
  int *pnLeakAlloc,
  int *pnLeakByte,
  FILE *pFile
){
  if( pEnv->pMemCtx==0 ){
    *pnLeakAlloc = 0;
    *pnLeakByte = 0;
  }else{
    tmMallocCheck((TmGlobal *)(pEnv->pMemCtx), pnLeakAlloc, pnLeakByte, pFile);
  }
}
