
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Page ;


 int SEGMENT_EOF (int,int) ;
 int * lsmFsPageData (int *,int*) ;
 int memmove (int *,int *,int) ;
 int pageGetNRec (int *,int) ;

void lsmSortedExpandBtreePage(Page *pPg, int nOrig){
  u8 *aData;
  int nData;
  int nEntry;
  int iHdr;

  aData = lsmFsPageData(pPg, &nData);
  nEntry = pageGetNRec(aData, nOrig);
  iHdr = SEGMENT_EOF(nOrig, nEntry);
  memmove(&aData[iHdr + (nData-nOrig)], &aData[iHdr], nOrig-iHdr);
}
