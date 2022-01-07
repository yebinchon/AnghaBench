
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int testDatasourceEntry (int *,int,void**,int*,int ,int ) ;
 int testDelete (int *,void*,int,int*) ;

void testDeleteDatasource(TestDb *pDb, Datasource *pData, int i, int *pRc){
  void *pKey; int nKey;
  testDatasourceEntry(pData, i, &pKey, &nKey, 0, 0);
  testDelete(pDb, pKey, nKey, pRc);
}
