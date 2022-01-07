
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Segment ;
typedef int Page ;
typedef int LsmBlob ;


 int SEGMENT_BTREE_FLAG ;
 int assert (int) ;
 int * fsPageData (int *,int*) ;
 int lsmVarintGet32 (int *,int*) ;
 int * pageGetCell (int *,int,int) ;
 int pageGetFlags (int *,int) ;
 int pageGetNRec (int *,int) ;
 scalar_t__ rtIsWrite (int) ;
 int rtTopic (int) ;
 int sortedReadData (int *,int *,int,int,void**,int *) ;

__attribute__((used)) static u8 *pageGetKey(
  Segment *pSeg,
  Page *pPg,
  int iCell,
  int *piTopic,
  int *pnKey,
  LsmBlob *pBlob
){
  u8 *pKey;
  int nDummy;
  int eType;
  u8 *aData;
  int nData;

  aData = fsPageData(pPg, &nData);

  assert( !(pageGetFlags(aData, nData) & SEGMENT_BTREE_FLAG) );
  assert( iCell<pageGetNRec(aData, nData) );

  pKey = pageGetCell(aData, nData, iCell);
  eType = *pKey++;
  pKey += lsmVarintGet32(pKey, &nDummy);
  pKey += lsmVarintGet32(pKey, pnKey);
  if( rtIsWrite(eType) ){
    pKey += lsmVarintGet32(pKey, &nDummy);
  }
  *piTopic = rtTopic(eType);

  sortedReadData(pSeg, pPg, pKey-aData, *pnKey, (void **)&pKey, pBlob);
  return pKey;
}
