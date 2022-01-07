
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int nRight; void* pSplitKey; int nSplitKey; int iSplitTopic; } ;
struct TYPE_14__ {TYPE_1__* pDb; } ;
struct TYPE_13__ {scalar_t__ pPg; int eType; void* pKey; int nKey; scalar_t__ nVal; scalar_t__ pVal; TYPE_4__* pLevel; } ;
struct TYPE_12__ {int xCmp; } ;
typedef TYPE_2__ SegmentPtr ;
typedef TYPE_3__ MultiCursor ;
typedef int LsmPgno ;
typedef TYPE_4__ Level ;


 int LSM_INSERT ;
 int LSM_OK ;
 int LSM_SEEK_EQ ;
 int LSM_SEEK_GE ;
 int LSM_SEEK_LE ;
 int LSM_SEGMENTPTR_FREE_THRESHOLD ;
 int LSM_START_DELETE ;
 int assert (int) ;
 int rtTopic (int) ;
 int seekInSegment (TYPE_3__*,TYPE_2__*,int,void*,int,int,int,int*,int*) ;
 int segmentPtrEnd (TYPE_3__*,TYPE_2__*,int) ;
 int segmentPtrReset (TYPE_2__*,int ) ;
 int sortedKeyCompare (int ,int,void*,int,int ,void*,int) ;

__attribute__((used)) static int seekInLevel(
  MultiCursor *pCsr,
  SegmentPtr *aPtr,
  int eSeek,
  int iTopic,
  void *pKey, int nKey,
  LsmPgno *piPgno,
  int *pbStop
){
  Level *pLvl = aPtr[0].pLevel;
  int rc = LSM_OK;
  int iOut = 0;
  int res = -1;
  int nRhs = pLvl->nRight;
  int bStop = 0;




  if( nRhs ){
    res = sortedKeyCompare(pCsr->pDb->xCmp, iTopic, pKey, nKey,
        pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey
    );
  }




  if( res<0 ){
    int i;
    int iPtr = 0;
    if( nRhs==0 ) iPtr = (int)*piPgno;

    rc = seekInSegment(
        pCsr, &aPtr[0], iTopic, pKey, nKey, iPtr, eSeek, &iOut, &bStop
    );
    if( rc==LSM_OK && nRhs>0 && eSeek==LSM_SEEK_GE && aPtr[0].pPg==0 ){
      res = 0;
    }
    for(i=1; i<=nRhs; i++){
      segmentPtrReset(&aPtr[i], LSM_SEGMENTPTR_FREE_THRESHOLD);
    }
  }

  if( res>=0 ){
    int bHit = 0;
    int iPtr = (int)*piPgno;
    int i;
    segmentPtrReset(&aPtr[0], LSM_SEGMENTPTR_FREE_THRESHOLD);
    for(i=1; rc==LSM_OK && i<=nRhs && bStop==0; i++){
      SegmentPtr *pPtr = &aPtr[i];
      iOut = 0;
      rc = seekInSegment(
          pCsr, pPtr, iTopic, pKey, nKey, iPtr, eSeek, &iOut, &bStop
      );
      iPtr = iOut;



      if( pPtr->pPg ){
        res = sortedKeyCompare(pCsr->pDb->xCmp,
            rtTopic(pPtr->eType), pPtr->pKey, pPtr->nKey,
            pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey
        );
        if( res<0 ){
          if( pPtr->eType & LSM_START_DELETE ){
            pPtr->eType &= ~LSM_INSERT;
            pPtr->pKey = pLvl->pSplitKey;
            pPtr->nKey = pLvl->nSplitKey;
            pPtr->pVal = 0;
            pPtr->nVal = 0;
          }else{
            segmentPtrReset(pPtr, LSM_SEGMENTPTR_FREE_THRESHOLD);
          }
        }
      }

      if( aPtr[i].pKey ) bHit = 1;
    }

    if( rc==LSM_OK && eSeek==LSM_SEEK_LE && bHit==0 ){
      rc = segmentPtrEnd(pCsr, &aPtr[0], 1);
    }
  }

  assert( eSeek==LSM_SEEK_EQ || bStop==0 );
  *piPgno = iOut;
  *pbStop = bStop;
  return rc;
}
