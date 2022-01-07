
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int testDatasourceEntry (int *,int,void**,int*,void**,int*) ;
 int testFetch (int *,void*,int,void*,int,int*) ;

void testDatasourceFetch(
  TestDb *pDb,
  Datasource *pData,
  int iKey,
  int *pRc
){
  void *pKey; int nKey;
  void *pVal; int nVal;

  testDatasourceEntry(pData, iKey, &pKey, &nKey, &pVal, &nVal);
  testFetch(pDb, pKey, nKey, pVal, nVal, pRc);
}
