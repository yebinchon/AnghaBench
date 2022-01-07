
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int Datasource ;


 int LSMTEST6_TESTDB ;
 int LSM_CONFIG_AUTOFLUSH ;
 int LSM_CONFIG_BLOCK_SIZE ;
 int LSM_CONFIG_PAGE_SIZE ;
 int LSM_OK ;
 int assert (int) ;
 int * getDatasource () ;
 int lsm_close (int *) ;
 int lsm_config (int *,int ,int*) ;
 int lsm_insert (int *,void*,int,void*,int) ;
 int lsm_new (int ,int **) ;
 int lsm_open (int *,int ) ;
 int tdb_lsm_env () ;
 int testDatasourceEntry (int *,int,void**,int*,void**,int*) ;
 int testDatasourceFree (int *) ;
 int testDeleteLsmdb (int ) ;
 int testSaveDb (int ,char*) ;

__attribute__((used)) static void setup_populate_db2(void){
  Datasource *pData;
  int ii;
  int rc;
  int nBlocksize = 64*1024;
  int nPagesize = 1024;
  int nWritebuffer = 4*1024;
  lsm_db *pDb;

  testDeleteLsmdb(LSMTEST6_TESTDB);
  rc = lsm_new(tdb_lsm_env(), &pDb);
  if( rc==LSM_OK ) rc = lsm_open(pDb, LSMTEST6_TESTDB);

  lsm_config(pDb, LSM_CONFIG_BLOCK_SIZE, &nBlocksize);
  lsm_config(pDb, LSM_CONFIG_PAGE_SIZE, &nPagesize);
  lsm_config(pDb, LSM_CONFIG_AUTOFLUSH, &nWritebuffer);

  pData = getDatasource();
  for(ii=0; rc==LSM_OK && ii<5000; ii++){
    void *pKey; int nKey;
    void *pVal; int nVal;
    testDatasourceEntry(pData, ii, &pKey, &nKey, &pVal, &nVal);
    lsm_insert(pDb, pKey, nKey, pVal, nVal);
  }
  testDatasourceFree(pData);
  lsm_close(pDb);

  testSaveDb(LSMTEST6_TESTDB, "log");
  assert( rc==LSM_OK );
}
