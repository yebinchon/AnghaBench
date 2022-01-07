
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int testDatasourceEntry (int *,int,void**,int*,void**,int*) ;
 int testWrite (int *,void*,int,void*,int,int*) ;

void testWriteDatasource(TestDb *pDb, Datasource *pData, int i, int *pRc){
  void *pKey; int nKey;
  void *pVal; int nVal;
  testDatasourceEntry(pData, i, &pKey, &nKey, &pVal, &nVal);
  testWrite(pDb, pKey, nKey, pVal, nVal, pRc);
}
