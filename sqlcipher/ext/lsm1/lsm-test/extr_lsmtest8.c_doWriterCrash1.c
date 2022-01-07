
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int TEST_CKSUM_BYTES ;
 int doLiveRecovery (char*,char*,int*) ;
 int setupDatabase1 (int *,int **) ;
 int tdb_lsm_open (char*,char*,int,int **) ;
 int testBegin (int *,int,int*) ;
 int testCaseNDot () ;
 int testCaseProgress (int,int const,int ,int*) ;
 int testCksumDatabase (int *,char*) ;
 int testClose (int **) ;
 int testCommit (int *,int ,int*) ;
 int testDatasourceFree (int *) ;
 int testWriteDatasourceRange (int *,int *,int const,int const,int*) ;

__attribute__((used)) static void doWriterCrash1(int *pRc){
  const int nWrite = 2000;
  const int nStep = 10;
  const int iWriteStart = 20000;
  int rc = 0;
  TestDb *pDb = 0;
  Datasource *pData = 0;

  rc = tdb_lsm_open("autowork=0", "testdb.lsm", 1, &pDb);
  if( rc==0 ){
    int iDot = 0;
    char zCksum[TEST_CKSUM_BYTES];
    int i;
    setupDatabase1(pDb, &pData);
    testCksumDatabase(pDb, zCksum);
    testBegin(pDb, 2, &rc);
    for(i=0; rc==0 && i<nWrite; i+=nStep){
      testCaseProgress(i, nWrite, testCaseNDot(), &iDot);
      testWriteDatasourceRange(pDb, pData, iWriteStart+i, nStep, &rc);
      doLiveRecovery("testdb.lsm", zCksum, &rc);
    }
  }
  testCommit(pDb, 0, &rc);
  testClose(&pDb);
  testDatasourceFree(pData);
  *pRc = rc;
}
