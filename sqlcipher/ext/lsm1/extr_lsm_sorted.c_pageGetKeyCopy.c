
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int lsm_env ;
struct TYPE_5__ {void* pData; int nData; } ;
typedef int Segment ;
typedef int Page ;
typedef TYPE_1__ LsmBlob ;


 int LSM_OK ;
 int assert (int) ;
 int * pageGetKey (int *,int *,int,int*,int*,TYPE_1__*) ;
 int sortedBlobSet (int *,TYPE_1__*,int *,int) ;

__attribute__((used)) static int pageGetKeyCopy(
  lsm_env *pEnv,
  Segment *pSeg,
  Page *pPg,
  int iCell,
  int *piTopic,
  LsmBlob *pBlob
){
  int rc = LSM_OK;
  int nKey;
  u8 *aKey;

  aKey = pageGetKey(pSeg, pPg, iCell, piTopic, &nKey, pBlob);
  assert( (void *)aKey!=pBlob->pData || nKey==pBlob->nData );
  if( (void *)aKey!=pBlob->pData ){
    rc = sortedBlobSet(pEnv, pBlob, aKey, nKey);
  }

  return rc;
}
