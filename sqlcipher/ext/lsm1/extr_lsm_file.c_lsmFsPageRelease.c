
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* pFree; TYPE_1__* pMapped; scalar_t__ pCompress; int nOut; } ;
struct TYPE_8__ {scalar_t__ nRef; int flags; int aData; struct TYPE_8__* pFreeNext; struct TYPE_8__* pMappedNext; int iPg; TYPE_2__* pFS; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int PAGE_FREE ;
 int PAGE_HASPREV ;
 int assert (int) ;
 scalar_t__ fsIsFirst (TYPE_2__*,int ) ;
 int fsPageAddToLru (TYPE_2__*,TYPE_1__*) ;
 int lsmFsPagePersist (TYPE_1__*) ;

int lsmFsPageRelease(Page *pPg){
  int rc = LSM_OK;
  if( pPg ){
    assert( pPg->nRef>0 );
    pPg->nRef--;
    if( pPg->nRef==0 ){
      FileSystem *pFS = pPg->pFS;
      rc = lsmFsPagePersist(pPg);
      pFS->nOut--;

      assert( pPg->pFS->pCompress
           || fsIsFirst(pPg->pFS, pPg->iPg)==0
           || (pPg->flags & PAGE_HASPREV)
      );
      pPg->aData -= (pPg->flags & PAGE_HASPREV);
      pPg->flags &= ~PAGE_HASPREV;

      if( (pPg->flags & PAGE_FREE)==0 ){

        Page **pp;
        for(pp=&pFS->pMapped; (*pp)!=pPg; pp=&(*pp)->pMappedNext);
        *pp = pPg->pMappedNext;
        pPg->pMappedNext = 0;


        pPg->pFreeNext = pFS->pFree;
        pFS->pFree = pPg;
      }else{
        fsPageAddToLru(pFS, pPg);
      }
    }
  }

  return rc;
}
