
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_db ;
typedef int TestDb ;
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
typedef TYPE_1__ DatasourceDefn ;
typedef int Datasource ;
typedef int CksumDb ;


 int TEST_DATASOURCE_RANDOM ;
 int assert (int) ;
 int lsm_checkpoint (int *,int ) ;
 int lsm_work (int *,int ,int const,int*) ;
 int tdb_close (int *) ;
 int * tdb_lsm (int *) ;
 int tdb_lsm_open (char const*,char const*,int ,int **) ;
 int tdb_lsm_prepare_sync_crash (int *,int) ;
 int testCaseNDot () ;
 int testCaseProgress (int,int const,int ,int*) ;
 int testCksumArrayFree (int *) ;
 int testCksumArrayGet (int *,int const) ;
 int * testCksumArrayNew (int *,int const,int const,int) ;
 int testCompareCksumLsmdb (char const*,int,int ,int ,int*) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (TYPE_1__ const*) ;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*) ;
 int testRestoreDb (char const*,char*) ;
 int testSetupSavedLsmdb (char*,char const*,int *,int,int*) ;

__attribute__((used)) static void crash_test1(int bCompress, int *pRc){
  const char *DBNAME = "testdb.lsm";
  const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 12, 16, 200, 200};

  const int nRow = 5000;
  const int nIter = 200;
  const int nWork = 20;
  const int nPage = 15;

  int i;
  int iDot = 0;
  Datasource *pData;
  CksumDb *pCksumDb;
  TestDb *pDb;
  char *zCfg;

  const char *azConfig[2] = {
    "page_size=1024 block_size=65536 autoflush=16384 safety=2 mmap=0",
    "page_size=1024 block_size=65536 autoflush=16384 safety=2 "
    " compression=1 mmap=0"
  };
  assert( bCompress==0 || bCompress==1 );


  pData = testDatasourceNew(&defn);
  pCksumDb = testCksumArrayNew(pData, nRow, nRow, 1);



  zCfg = testMallocPrintf("%s automerge=7", azConfig[bCompress]);
  testSetupSavedLsmdb(zCfg, DBNAME, pData, 5000, pRc);
  testFree(zCfg);

  for(i=0; i<nIter && *pRc==0; i++){
    int iWork;
    int testrc = 0;

    testCaseProgress(i, nIter, testCaseNDot(), &iDot);


    testRestoreDb(DBNAME, "log");
    testrc = tdb_lsm_open(azConfig[bCompress], DBNAME, 0, &pDb);
    assert( testrc==0 );


    tdb_lsm_prepare_sync_crash(pDb, 1 + (i%(nWork*2)));
    for(iWork=0; testrc==0 && iWork<nWork; iWork++){
      int nWrite = 0;
      lsm_db *db = tdb_lsm(pDb);
      testrc = lsm_work(db, 0, nPage, &nWrite);

      if( testrc==0 ) testrc = lsm_checkpoint(db, 0);
    }
    tdb_close(pDb);


    testCompareCksumLsmdb(DBNAME,
        bCompress, testCksumArrayGet(pCksumDb, nRow), 0, pRc);
  }

  testCksumArrayFree(pCksumDb);
  testDatasourceFree(pData);
}
