
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int nCell; int iCell; int nKey; int nVal; int pVal; int blob2; int eType; int blob1; int pKey; int iPgPtr; scalar_t__ pPg; } ;
typedef TYPE_1__ SegmentPtr ;


 scalar_t__ GETVARINT32 (int *,int) ;
 scalar_t__ GETVARINT64 (int *,int ) ;
 int LSM_OK ;
 size_t SEGMENT_CELLPTR_OFFSET (int,int) ;
 int assert (int) ;
 int * fsPageData (scalar_t__,int*) ;
 int lsmGetU16 (int *) ;
 scalar_t__ rtIsWrite (int ) ;
 int segmentPtrReadData (TYPE_1__*,int,int,int *,int *) ;

__attribute__((used)) static int segmentPtrLoadCell(
  SegmentPtr *pPtr,
  int iNew
){
  int rc = LSM_OK;
  if( pPtr->pPg ){
    u8 *aData;
    int iOff;
    int nPgsz;

    assert( iNew<pPtr->nCell );
    pPtr->iCell = iNew;
    aData = fsPageData(pPtr->pPg, &nPgsz);
    iOff = lsmGetU16(&aData[SEGMENT_CELLPTR_OFFSET(nPgsz, pPtr->iCell)]);
    pPtr->eType = aData[iOff];
    iOff++;
    iOff += GETVARINT64(&aData[iOff], pPtr->iPgPtr);
    iOff += GETVARINT32(&aData[iOff], pPtr->nKey);
    if( rtIsWrite(pPtr->eType) ){
      iOff += GETVARINT32(&aData[iOff], pPtr->nVal);
    }
    assert( pPtr->nKey>=0 );

    rc = segmentPtrReadData(
        pPtr, iOff, pPtr->nKey, &pPtr->pKey, &pPtr->blob1
    );
    if( rc==LSM_OK && rtIsWrite(pPtr->eType) ){
      rc = segmentPtrReadData(
          pPtr, iOff+pPtr->nKey, pPtr->nVal, &pPtr->pVal, &pPtr->blob2
      );
    }else{
      pPtr->nVal = 0;
      pPtr->pVal = 0;
    }
  }

  return rc;
}
