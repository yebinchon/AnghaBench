
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;
typedef int Datasource ;


 int LSMTEST6_TESTDB ;
 int LSM_OK ;
 int assert (int) ;
 int * getDatasource () ;
 int lsm_close (int *) ;
 int testDatasourceFree (int *) ;
 int testDeleteLsmdb (int ) ;
 int testOomAssertRc (int *,int) ;
 int testOomEnable (int *,int) ;
 int testOomFetchData (int *,int *,int *,int,int*) ;
 int testOomOpen (int *,int ,int **,int*) ;
 int testOomWriteData (int *,int *,int *,int,int*) ;

__attribute__((used)) static void simple_oom2_1(OomTest *pOom){
  const int nRecord = 100;
  const int nIns = 10;

  Datasource *pData = getDatasource();
  int rc = LSM_OK;
  lsm_db *pDb1;
  lsm_db *pDb2;
  int i;

  testDeleteLsmdb(LSMTEST6_TESTDB);



  testOomEnable(pOom, 0);
  testOomOpen(pOom, LSMTEST6_TESTDB, &pDb1, &rc);
  testOomOpen(pOom, LSMTEST6_TESTDB, &pDb2, &rc);
  for(i=0; i<nRecord; i++){
    testOomWriteData(pOom, pDb1, pData, i, &rc);
  }
  testOomEnable(pOom, 1);
  assert( rc==0 );


  for(i=nRecord; i<nRecord+nIns; i++){
    testOomWriteData(pOom, pDb1, pData, i, &rc);
    if( rc ) break;
  }
  testOomAssertRc(pOom, rc);



  testOomEnable(pOom, 0);
  rc = 0;
  for(; i<nRecord+nIns && rc==0; i++){
    testOomWriteData(pOom, pDb2, pData, i, &rc);
  }
  for(i=0; i<nRecord+nIns; i++) testOomFetchData(pOom, pDb2, pData, i, &rc);
  testOomEnable(pOom, 1);

  lsm_close(pDb1);
  lsm_close(pDb2);
  testDatasourceFree(pData);
}
