
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int key; TYPE_1__* pDb; int eType; int * aTree; } ;
struct TYPE_5__ {int pEnv; } ;
typedef TYPE_2__ MultiCursor ;


 int LSM_OK ;
 int multiCursorGetKey (TYPE_2__*,int ,int *,void**,int*) ;
 int sortedBlobSet (int ,int *,void*,int) ;

__attribute__((used)) static void multiCursorCacheKey(MultiCursor *pCsr, int *pRc){
  if( *pRc==LSM_OK ){
    void *pKey;
    int nKey;
    multiCursorGetKey(pCsr, pCsr->aTree[1], &pCsr->eType, &pKey, &nKey);
    *pRc = sortedBlobSet(pCsr->pDb->pEnv, &pCsr->key, pKey, nKey);
  }
}
