
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pPage; TYPE_1__* aSave; } ;
struct TYPE_4__ {scalar_t__ bStore; int iPgno; } ;
typedef TYPE_2__ MergeWorker ;


 int assert (int) ;
 int lsmFsPageNumber (scalar_t__) ;
 int lsmFsPagePersist (scalar_t__) ;
 int lsmFsPageRelease (scalar_t__) ;

__attribute__((used)) static int mergeWorkerPersistAndRelease(MergeWorker *pMW){
  int rc;
  int i;

  assert( pMW->pPage || (pMW->aSave[0].bStore==0 && pMW->aSave[1].bStore==0) );


  rc = lsmFsPagePersist(pMW->pPage);


  for(i=0; i<2; i++){
    if( pMW->aSave[i].bStore ){
      pMW->aSave[i].iPgno = lsmFsPageNumber(pMW->pPage);
      pMW->aSave[i].bStore = 0;
    }
  }


  lsmFsPageRelease(pMW->pPage);
  pMW->pPage = 0;
  return rc;
}
