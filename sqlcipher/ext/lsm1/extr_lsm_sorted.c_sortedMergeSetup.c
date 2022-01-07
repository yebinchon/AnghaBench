
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int pEnv; int pWorker; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_12__ {scalar_t__ iRoot; } ;
struct TYPE_14__ {scalar_t__ nRight; int flags; scalar_t__ pMerge; TYPE_2__ lhs; struct TYPE_14__* pNext; TYPE_2__* aRhs; scalar_t__ iAge; } ;
struct TYPE_13__ {int nInput; int * aInput; } ;
typedef TYPE_2__ Segment ;
typedef int MergeInput ;
typedef TYPE_3__ Merge ;
typedef TYPE_4__ Level ;


 int LEVEL_FREELIST_ONLY ;
 int LSM_OK ;
 int assert (int) ;
 TYPE_4__* lsmDbSnapshotLevel (int ) ;
 int lsmDbSnapshotSetLevel (int ,TYPE_4__*) ;
 scalar_t__ lsmMallocZeroRc (int ,int,int*) ;
 int sortedFreeLevel (int ,TYPE_4__*) ;

__attribute__((used)) static int sortedMergeSetup(
  lsm_db *pDb,
  Level *pLevel,
  int nMerge,
  Level **ppNew
){
  int rc = LSM_OK;
  Level *pNew;
  int bUseNext = 0;
  Merge *pMerge;
  int nByte;
  pNew = (Level *)lsmMallocZeroRc(pDb->pEnv, sizeof(Level), &rc);
  if( pNew ){
    pNew->aRhs = (Segment *)lsmMallocZeroRc(pDb->pEnv,
                                        nMerge * sizeof(Segment), &rc);
  }


  if( rc==LSM_OK ){
    Level *pNext = 0;
    int i;
    int bFreeOnly = 1;
    Level *pTopLevel;
    Level *p = pLevel;
    Level **pp;
    pNew->nRight = nMerge;
    pNew->iAge = pLevel->iAge+1;
    for(i=0; i<nMerge; i++){
      assert( p->nRight==0 );
      pNext = p->pNext;
      pNew->aRhs[i] = p->lhs;
      if( (p->flags & LEVEL_FREELIST_ONLY)==0 ) bFreeOnly = 0;
      sortedFreeLevel(pDb->pEnv, p);
      p = pNext;
    }

    if( bFreeOnly ) pNew->flags |= LEVEL_FREELIST_ONLY;


    pTopLevel = lsmDbSnapshotLevel(pDb->pWorker);
    pNew->pNext = p;
    for(pp=&pTopLevel; *pp!=pLevel; pp=&((*pp)->pNext));
    *pp = pNew;
    lsmDbSnapshotSetLevel(pDb->pWorker, pTopLevel);


    if( pNext && pNext->pMerge==0 && pNext->lhs.iRoot && pNext
     && (bFreeOnly==0 || (pNext->flags & LEVEL_FREELIST_ONLY))
    ){
      bUseNext = 1;
    }
  }


  nByte = sizeof(Merge) + sizeof(MergeInput) * (nMerge + bUseNext);
  pMerge = (Merge *)lsmMallocZeroRc(pDb->pEnv, nByte, &rc);
  if( pMerge ){
    pMerge->aInput = (MergeInput *)&pMerge[1];
    pMerge->nInput = nMerge + bUseNext;
    pNew->pMerge = pMerge;
  }

  *ppNew = pNew;
  return rc;
}
