
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int nRight; scalar_t__ iSplitTopic; void* pSplitKey; int nSplitKey; int lhs; } ;
struct TYPE_10__ {int nData; int pData; } ;
struct TYPE_12__ {int eType; int flags; int nPtr; int* aTree; TYPE_2__ key; TYPE_1__* pDb; TYPE_3__* aPtr; } ;
struct TYPE_11__ {scalar_t__ pPg; int eType; int nKey; int pKey; int * pSeg; TYPE_5__* pLevel; } ;
struct TYPE_9__ {int xCmp; } ;
typedef TYPE_3__ SegmentPtr ;
typedef TYPE_4__ MultiCursor ;
typedef TYPE_5__ Level ;


 int CURSOR_IGNORE_DELETE ;
 int CURSOR_IGNORE_SYSTEM ;
 int CURSOR_NEXT_OK ;
 int CURSOR_PREV_OK ;
 int LSM_END_DELETE ;
 int LSM_INSERT ;
 int LSM_START_DELETE ;
 int assert (int) ;
 int assertCursorTree (TYPE_4__*) ;
 int multiCursorGetKey (TYPE_4__*,int,int*,void**,int*) ;
 scalar_t__ rtTopic (int) ;
 scalar_t__ sortedKeyCompare (int ,scalar_t__,int ,int ,scalar_t__,void*,int) ;

__attribute__((used)) static int mcursorLocationOk(MultiCursor *pCsr, int bDeleteOk){
  int eType = pCsr->eType;
  int iKey;
  int i;
  int rdmask;

  assert( pCsr->flags & (CURSOR_NEXT_OK|CURSOR_PREV_OK) );
  assertCursorTree(pCsr);

  rdmask = (pCsr->flags & CURSOR_NEXT_OK) ? LSM_END_DELETE : LSM_START_DELETE;




  if( (pCsr->flags & CURSOR_IGNORE_DELETE) && bDeleteOk==0 ){
    if( (eType & LSM_INSERT)==0 ) return 0;
  }



  if( (pCsr->flags & CURSOR_IGNORE_SYSTEM) && rtTopic(eType)!=0 ){
    return 0;
  }
  for(i=0; i<pCsr->nPtr; i++){
    SegmentPtr *pPtr = &pCsr->aPtr[i];
    Level *pLvl = pPtr->pLevel;
    if( pLvl->nRight && pPtr->pPg ){
      if( pPtr->pSeg==&pLvl->lhs ){
        int j;
        for(j=0; j<pLvl->nRight; j++) assert( pPtr[j+1].pPg==0 );
      }else{
        int res = sortedKeyCompare(pCsr->pDb->xCmp,
            rtTopic(pPtr->eType), pPtr->pKey, pPtr->nKey,
            pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey
        );
        assert( res>=0 );
      }
    }
  }
  iKey = pCsr->aTree[1];
  for(i=0; i<iKey; i++){
    int csrflags;
    multiCursorGetKey(pCsr, i, &csrflags, 0, 0);
    if( (rdmask & csrflags) ){
      const int SD_ED = (LSM_START_DELETE|LSM_END_DELETE);
      if( (csrflags & SD_ED)==SD_ED
       || (pCsr->flags & CURSOR_IGNORE_DELETE)==0
      ){
        void *pKey; int nKey;
        multiCursorGetKey(pCsr, i, 0, &pKey, &nKey);
        if( 0==sortedKeyCompare(pCsr->pDb->xCmp,
              rtTopic(eType), pCsr->key.pData, pCsr->key.nData,
              rtTopic(csrflags), pKey, nKey
        )){
          continue;
        }
      }
      return 0;
    }
  }


  return 1;
}
