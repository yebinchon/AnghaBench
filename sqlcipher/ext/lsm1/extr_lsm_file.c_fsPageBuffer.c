
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {scalar_t__ nCacheAlloc; scalar_t__ nCacheMax; TYPE_1__* pLruFirst; int pEnv; int nPagesize; } ;
struct TYPE_12__ {int flags; int * aData; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ FileSystem ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int PAGE_FREE ;
 int fsPageRemoveFromHash (TYPE_2__*,TYPE_1__*) ;
 int fsPageRemoveFromLru (TYPE_2__*,TYPE_1__*) ;
 int lsmFree (int ,TYPE_1__*) ;
 scalar_t__ lsmMalloc (int ,int ) ;
 TYPE_1__* lsmMallocZero (int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int fsPageBuffer(
  FileSystem *pFS,
  Page **ppOut
){
  int rc = LSM_OK;
  Page *pPage = 0;
  if( pFS->pLruFirst==0 || pFS->nCacheAlloc<pFS->nCacheMax ){

    pPage = lsmMallocZero(pFS->pEnv, sizeof(Page));
    if( !pPage ){
      rc = LSM_NOMEM_BKPT;
    }else{
      pPage->aData = (u8 *)lsmMalloc(pFS->pEnv, pFS->nPagesize);
      if( !pPage->aData ){
        lsmFree(pFS->pEnv, pPage);
        rc = LSM_NOMEM_BKPT;
        pPage = 0;
      }else{
        pFS->nCacheAlloc++;
      }
    }
  }else{

    u8 *aData;
    pPage = pFS->pLruFirst;
    aData = pPage->aData;
    fsPageRemoveFromLru(pFS, pPage);
    fsPageRemoveFromHash(pFS, pPage);

    memset(pPage, 0, sizeof(Page));
    pPage->aData = aData;
  }

  if( pPage ){
    pPage->flags = PAGE_FREE;
  }
  *ppOut = pPage;
  return rc;
}
