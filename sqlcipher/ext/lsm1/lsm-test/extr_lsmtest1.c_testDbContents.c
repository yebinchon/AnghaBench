
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int memcpy (void*,void*,int) ;
 int tdb_close (int *) ;
 int tdb_write (int *,void*,int,void*,int) ;
 int testControlDb (int **) ;
 int testDatasourceEntry (int *,int,void**,int*,void**,int*) ;
 int testFetch (int *,void*,int,void*,int,int*) ;
 int testFree (void*) ;
 void* testMalloc (int) ;
 int testPrngValue (int) ;
 int testScanCompare (int *,int *,int,void*,int,void*,int,int*) ;

void testDbContents(
  TestDb *pDb,
  Datasource *pData,
  int nRow,
  int iFirst,
  int iLast,
  int nLookupTest,
  int nScanTest,
  int *pRc
){
  int j;
  int rc = *pRc;

  if( rc==0 && nScanTest ){
    TestDb *pDb2 = 0;


    rc = testControlDb(&pDb2);

    for(j=iFirst; rc==0 && j<=iLast; j++){
      void *pKey; int nKey;
      void *pVal; int nVal;
      testDatasourceEntry(pData, j, &pKey, &nKey, &pVal, &nVal);
      rc = tdb_write(pDb2, pKey, nKey, pVal, nVal);
    }

    if( rc==0 ){
      int iKey1;
      int iKey2;
      void *pKey1; int nKey1;
      void *pKey2; int nKey2;

      iKey1 = testPrngValue((iFirst<<8) + (iLast<<16)) % nRow;
      iKey2 = testPrngValue((iLast<<8) + (iFirst<<16)) % nRow;
      testDatasourceEntry(pData, iKey1, &pKey2, &nKey1, 0, 0);
      pKey1 = testMalloc(nKey1+1);
      memcpy(pKey1, pKey2, nKey1+1);
      testDatasourceEntry(pData, iKey2, &pKey2, &nKey2, 0, 0);

      testScanCompare(pDb2, pDb, 0, 0, 0, 0, 0, &rc);
      testScanCompare(pDb2, pDb, 0, 0, 0, pKey2, nKey2, &rc);
      testScanCompare(pDb2, pDb, 0, pKey1, nKey1, 0, 0, &rc);
      testScanCompare(pDb2, pDb, 0, pKey1, nKey1, pKey2, nKey2, &rc);
      testScanCompare(pDb2, pDb, 1, 0, 0, 0, 0, &rc);
      testScanCompare(pDb2, pDb, 1, 0, 0, pKey2, nKey2, &rc);
      testScanCompare(pDb2, pDb, 1, pKey1, nKey1, 0, 0, &rc);
      testScanCompare(pDb2, pDb, 1, pKey1, nKey1, pKey2, nKey2, &rc);
      testFree(pKey1);
    }
    tdb_close(pDb2);
  }


  for(j=0; rc==0 && j<nLookupTest; j++){
    int iKey;
    void *pKey; int nKey;
    void *pVal; int nVal;

    if( nLookupTest>=nRow ){
      iKey = j;
    }else{
      iKey = testPrngValue(j + (iFirst<<8) + (iLast<<16)) % nRow;
    }

    testDatasourceEntry(pData, iKey, &pKey, &nKey, &pVal, &nVal);
    if( iFirst>iKey || iKey>iLast ){
      pVal = 0;
      nVal = -1;
    }

    testFetch(pDb, pKey, nKey, pVal, nVal, &rc);
  }

  *pRc = rc;
}
