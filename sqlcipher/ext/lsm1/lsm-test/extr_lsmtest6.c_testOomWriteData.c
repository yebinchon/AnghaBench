
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;
typedef int Datasource ;


 int testDatasourceEntry (int *,int,void**,int*,void**,int*) ;
 int testOomWrite (int *,int *,void*,int,void*,int,int*) ;

__attribute__((used)) static void testOomWriteData(
  OomTest *pOom,
  lsm_db *pDb,
  Datasource *pData,
  int iKey,
  int *pRc
){
  void *pKey; int nKey;
  void *pVal; int nVal;
  testDatasourceEntry(pData, iKey, &pKey, &nKey, &pVal, &nVal);
  testOomWrite(pOom, pDb, pKey, nKey, pVal, nVal, pRc);
}
