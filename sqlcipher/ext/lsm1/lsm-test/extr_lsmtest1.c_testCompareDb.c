
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int memcpy (void*,void*,int) ;
 int testDatasourceEntry (int *,int,void**,int*,int ,int ) ;
 int testFetchCompare (int *,int *,void*,int,int*) ;
 int testFree (void*) ;
 void* testMalloc (int) ;
 int testPrngValue (int) ;
 int testScanCompare (int *,int *,int,void*,int,void*,int,int*) ;

void testCompareDb(
  Datasource *pData,
  int nData,
  int iSeed,
  TestDb *pControl,
  TestDb *pDb,
  int *pRc
){
  int i;

  static int nCall = 0;
  nCall++;

  testScanCompare(pControl, pDb, 0, 0, 0, 0, 0, pRc);
  testScanCompare(pControl, pDb, 1, 0, 0, 0, 0, pRc);

  if( *pRc==0 ){
    int iKey1;
    int iKey2;
    void *pKey1; int nKey1;
    void *pKey2; int nKey2;

    iKey1 = testPrngValue(iSeed) % nData;
    iKey2 = testPrngValue(iSeed+1) % nData;
    testDatasourceEntry(pData, iKey1, &pKey2, &nKey1, 0, 0);
    pKey1 = testMalloc(nKey1+1);
    memcpy(pKey1, pKey2, nKey1+1);
    testDatasourceEntry(pData, iKey2, &pKey2, &nKey2, 0, 0);

    testScanCompare(pControl, pDb, 0, 0, 0, pKey2, nKey2, pRc);
    testScanCompare(pControl, pDb, 0, pKey1, nKey1, 0, 0, pRc);
    testScanCompare(pControl, pDb, 0, pKey1, nKey1, pKey2, nKey2, pRc);
    testScanCompare(pControl, pDb, 1, 0, 0, pKey2, nKey2, pRc);
    testScanCompare(pControl, pDb, 1, pKey1, nKey1, 0, 0, pRc);
    testScanCompare(pControl, pDb, 1, pKey1, nKey1, pKey2, nKey2, pRc);
    testFree(pKey1);
  }

  for(i=0; i<nData && *pRc==0; i++){
    void *pKey; int nKey;
    testDatasourceEntry(pData, i, &pKey, &nKey, 0, 0);
    testFetchCompare(pControl, pDb, pKey, nKey, pRc);
  }
}
