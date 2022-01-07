
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;
typedef int Datasource ;


 int LSMTEST6_TESTDB ;
 int LSM_OK ;
 int * getDatasource () ;
 int lsm_close (int *) ;
 int testDatasourceFree (int *) ;
 int testOomFetchData (int *,int *,int *,int,int*) ;
 int testOomOpen (int *,int ,int **,int*) ;
 int testOomWriteData (int *,int *,int *,int,int*) ;
 int testRestoreDb (int ,char*) ;

__attribute__((used)) static void simple_oom_6(OomTest *pOom){
  Datasource *pData = getDatasource();
  int rc = LSM_OK;
  lsm_db *pDb;

  testRestoreDb(LSMTEST6_TESTDB, "log");
  testOomOpen(pOom, LSMTEST6_TESTDB, &pDb, &rc);

  testOomWriteData(pOom, pDb, pData, 5000, &rc);
  testOomWriteData(pOom, pDb, pData, 5001, &rc);
  testOomWriteData(pOom, pDb, pData, 5002, &rc);
  testOomFetchData(pOom, pDb, pData, 5001, &rc);
  testOomFetchData(pOom, pDb, pData, 1234, &rc);

  lsm_close(pDb);
  testDatasourceFree(pData);
}
