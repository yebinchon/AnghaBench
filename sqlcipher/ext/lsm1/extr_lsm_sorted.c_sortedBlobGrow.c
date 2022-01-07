
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_3__ {scalar_t__ pData; int nAlloc; int * pEnv; } ;
typedef TYPE_1__ LsmBlob ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int assert (int) ;
 scalar_t__ lsmReallocOrFree (int *,scalar_t__,int) ;

__attribute__((used)) static int sortedBlobGrow(lsm_env *pEnv, LsmBlob *pBlob, int nData){
  assert( pBlob->pEnv==pEnv || (pBlob->pEnv==0 && pBlob->pData==0) );
  if( pBlob->nAlloc<nData ){
    pBlob->pData = lsmReallocOrFree(pEnv, pBlob->pData, nData);
    if( !pBlob->pData ) return LSM_NOMEM_BKPT;
    pBlob->nAlloc = nData;
    pBlob->pEnv = pEnv;
  }
  return LSM_OK;
}
