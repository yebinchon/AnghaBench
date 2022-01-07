
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Segment ;
typedef int Page ;
typedef scalar_t__ LsmPgno ;


 int LSM_OK ;
 int LSM_START_DELETE ;
 int SEGMENT_BTREE_FLAG ;
 int lsmFsDbPageNext (int *,int *,int,int **) ;
 int* lsmFsPageData (int *,int*) ;
 int lsmFsPageRelease (int *) ;
 int* pageGetCell (int*,int,int) ;
 int pageGetFlags (int*,int) ;
 int pageGetNRec (int*,int) ;
 scalar_t__ pageGetPtr (int*,int) ;
 scalar_t__ pageGetRecordPtr (int*,int,int) ;

__attribute__((used)) static int ptrFwdPointer(
  Page *pPage,
  int iCell,
  Segment *pSeg,
  LsmPgno *piPtr,
  int *pbFound
){
  Page *pPg = pPage;
  int iFirst = iCell;
  int rc = LSM_OK;

  do {
    Page *pNext = 0;
    u8 *aData;
    int nData;

    aData = lsmFsPageData(pPg, &nData);
    if( (pageGetFlags(aData, nData) & SEGMENT_BTREE_FLAG)==0 ){
      int i;
      int nCell = pageGetNRec(aData, nData);
      for(i=iFirst; i<nCell; i++){
        u8 eType = *pageGetCell(aData, nData, i);
        if( (eType & LSM_START_DELETE)==0 ){
          *pbFound = 1;
          *piPtr = pageGetRecordPtr(aData, nData, i) + pageGetPtr(aData, nData);
          lsmFsPageRelease(pPg);
          return LSM_OK;
        }
      }
    }

    rc = lsmFsDbPageNext(pSeg, pPg, 1, &pNext);
    lsmFsPageRelease(pPg);
    pPg = pNext;
    iFirst = 0;
  }while( pPg && rc==LSM_OK );
  lsmFsPageRelease(pPg);

  *pbFound = 0;
  return rc;
}
