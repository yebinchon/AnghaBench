
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_4__ {int nData; int pData; } ;
typedef TYPE_1__ LsmBlob ;


 int LSM_NOMEM ;
 int LSM_OK ;
 int memcpy (int ,void*,int) ;
 scalar_t__ sortedBlobGrow (int *,TYPE_1__*,int) ;

__attribute__((used)) static int sortedBlobSet(lsm_env *pEnv, LsmBlob *pBlob, void *pData, int nData){
  if( sortedBlobGrow(pEnv, pBlob, nData) ) return LSM_NOMEM;
  memcpy(pBlob->pData, pData, nData);
  pBlob->nData = nData;
  return LSM_OK;
}
