
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_4__ {struct TYPE_4__* apShmChunk; scalar_t__ pFile; int pClientMutex; } ;
typedef TYPE_1__ Database ;


 int assert (int ) ;
 int holdingGlobalMutex (int *) ;
 int lsmEnvClose (int *,scalar_t__) ;
 int lsmFree (int *,TYPE_1__*) ;
 int lsmMutexDel (int *,int ) ;

__attribute__((used)) static void freeDatabase(lsm_env *pEnv, Database *p){
  assert( holdingGlobalMutex(pEnv) );
  if( p ){

    lsmMutexDel(pEnv, p->pClientMutex);

    if( p->pFile ){
      lsmEnvClose(pEnv, p->pFile);
    }


    lsmFree(pEnv, p->apShmChunk);


    lsmFree(pEnv, p);
  }
}
