
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int testDeleteDatasource (int *,int *,int,int*) ;

void testDeleteDatasourceRange(
  TestDb *pDb,
  Datasource *pData,
  int iFirst,
  int nWrite,
  int *pRc
){
  int i;
  for(i=0; i<nWrite; i++){
    testDeleteDatasource(pDb, pData, iFirst+i, pRc);
  }
}
