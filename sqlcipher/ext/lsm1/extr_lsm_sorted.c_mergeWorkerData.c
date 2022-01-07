
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int iOutputOff; } ;
struct TYPE_7__ {int pPage; TYPE_1__* pLevel; } ;
struct TYPE_6__ {TYPE_3__* pMerge; } ;
typedef TYPE_2__ MergeWorker ;
typedef TYPE_3__ Merge ;


 int LSM_MIN (int,scalar_t__) ;
 int LSM_OK ;
 scalar_t__ SEGMENT_EOF (int,int) ;
 int assert (int ) ;
 int * fsPageData (int ,int*) ;
 int lsmFsPageWritable (int ) ;
 int memcpy (int *,int *,int) ;
 int mergeWorkerNextPage (TYPE_2__*,int) ;
 int pageGetNRec (int *,int) ;

__attribute__((used)) static int mergeWorkerData(
  MergeWorker *pMW,
  int bSep,
  int iFPtr,
  u8 *aWrite,
  int nWrite
){
  int rc = LSM_OK;
  int nRem = nWrite;

  while( rc==LSM_OK && nRem>0 ){
    Merge *pMerge = pMW->pLevel->pMerge;
    int nCopy;
    u8 *aData;
    int nData;
    int nRec;
    int iOff;

    assert( lsmFsPageWritable(pMW->pPage) );

    aData = fsPageData(pMW->pPage, &nData);
    nRec = pageGetNRec(aData, nData);
    iOff = pMerge->iOutputOff;
    nCopy = LSM_MIN(nRem, SEGMENT_EOF(nData, nRec) - iOff);

    memcpy(&aData[iOff], &aWrite[nWrite-nRem], nCopy);
    nRem -= nCopy;

    if( nRem>0 ){
      rc = mergeWorkerNextPage(pMW, iFPtr);
    }else{
      pMerge->iOutputOff = iOff + nCopy;
    }
  }

  return rc;
}
