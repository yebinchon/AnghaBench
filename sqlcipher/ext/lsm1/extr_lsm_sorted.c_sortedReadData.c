
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int nData; void* pData; } ;
typedef int Segment ;
typedef int Page ;
typedef TYPE_1__ LsmBlob ;


 int LSM_CORRUPT_BKPT ;
 int LSM_MIN (int,int) ;
 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int SEGMENT_EOF (int,int) ;
 size_t SEGMENT_FLAGS_OFFSET (int) ;
 size_t SEGMENT_NRECORD_OFFSET (int) ;
 int assert (int) ;
 int * fsPageData (int *,int*) ;
 int lsmFsDbPageNext (int *,int *,int,int **) ;
 int lsmFsPageRef (int *) ;
 int lsmFsPageRelease (int *) ;
 int lsmGetU16 (int *) ;
 int lsmPageEnv (int *) ;
 int memcpy (int *,int *,int) ;
 int sortedBlobGrow (int ,TYPE_1__*,int) ;

__attribute__((used)) static int sortedReadData(
  Segment *pSeg,
  Page *pPg,
  int iOff,
  int nByte,
  void **ppData,
  LsmBlob *pBlob
){
  int rc = LSM_OK;
  int iEnd;
  int nData;
  int nCell;
  u8 *aData;

  aData = fsPageData(pPg, &nData);
  nCell = lsmGetU16(&aData[SEGMENT_NRECORD_OFFSET(nData)]);
  iEnd = SEGMENT_EOF(nData, nCell);
  assert( iEnd>0 && iEnd<nData );

  if( iOff+nByte<=iEnd ){
    *ppData = (void *)&aData[iOff];
  }else{
    int nRem = nByte;
    int i = iOff;
    u8 *aDest;


    rc = sortedBlobGrow(lsmPageEnv(pPg), pBlob, nByte);
    if( rc!=LSM_OK ) return rc;
    pBlob->nData = nByte;
    aDest = (u8 *)pBlob->pData;
    *ppData = pBlob->pData;


    lsmFsPageRef(pPg);

    while( rc==LSM_OK ){
      Page *pNext;
      int flags;


      int nCopy = LSM_MIN(nRem, iEnd-i);
      if( nCopy>0 ){
        memcpy(&aDest[nByte-nRem], &aData[i], nCopy);
        nRem -= nCopy;
        i += nCopy;
        assert( nRem==0 || i==iEnd );
      }
      assert( nRem>=0 );
      if( nRem==0 ) break;
      i -= iEnd;



      do {
        rc = lsmFsDbPageNext(pSeg, pPg, 1, &pNext);
        if( rc==LSM_OK && pNext==0 ){
          rc = LSM_CORRUPT_BKPT;
        }
        if( rc ) break;
        lsmFsPageRelease(pPg);
        pPg = pNext;
        aData = fsPageData(pPg, &nData);
        flags = lsmGetU16(&aData[SEGMENT_FLAGS_OFFSET(nData)]);
      }while( flags&SEGMENT_BTREE_FLAG );

      iEnd = SEGMENT_EOF(nData, lsmGetU16(&aData[nData-2]));
      assert( iEnd>0 && iEnd<nData );
    }

    lsmFsPageRelease(pPg);
  }

  return rc;
}
