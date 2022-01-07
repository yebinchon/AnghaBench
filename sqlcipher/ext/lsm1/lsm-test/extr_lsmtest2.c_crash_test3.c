
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
typedef TYPE_1__ DatasourceDefn ;
typedef int Datasource ;
typedef int CksumDb ;


 int TEST_DATASOURCE_RANDOM ;
 int tdb_close (int *) ;
 int tdb_lsm_prepare_sync_crash (int *,int) ;
 int testCaseNDot () ;
 int testCaseProgress (int,int const,int ,int*) ;
 int testCksumArrayFree (int *) ;
 int testCksumArrayGet (int *,int) ;
 int * testCksumArrayNew (int *,int,int,int) ;
 int testCompareCksumLsmdb (char const*,int,int ,int ,int*) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (TYPE_1__ const*) ;
 int * testOpen (char*,int ,int*) ;
 int testRestoreDb (char const*,char*) ;
 int testSetupSavedLsmdb (char*,char const*,int *,int,int*) ;
 int testWriteDatasourceRange (int *,int *,int,int,int*) ;

__attribute__((used)) static void crash_test3(int bCompress, int *pRc){
  const char *DBNAME = "testdb.lsm";
  const int nIter = 100;
  const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 12, 16, 1000, 1000};

  int i;
  int iDot = 0;
  Datasource *pData;
  CksumDb *pCksumDb;
  TestDb *pDb;


  pData = testDatasourceNew(&defn);
  pCksumDb = testCksumArrayNew(pData, 110, 150, 10);


  testSetupSavedLsmdb("", DBNAME, pData, 100, pRc);

  for(i=0; i<nIter && *pRc==0; i++){
    int iOpen;
    testCaseProgress(i, nIter, testCaseNDot(), &iDot);
    testRestoreDb(DBNAME, "log");

    for(iOpen=0; iOpen<5; iOpen++){

      pDb = testOpen("lsm", 0, pRc);
      testWriteDatasourceRange(pDb, pData, 100+iOpen*10, 10, pRc);


      tdb_lsm_prepare_sync_crash(pDb, 1 + (i%2));
      tdb_close(pDb);



      testCompareCksumLsmdb(DBNAME, bCompress,
        testCksumArrayGet(pCksumDb, 110 + iOpen*10), 0,
        pRc
      );
    }
  }

  testDatasourceFree(pData);
  testCksumArrayFree(pCksumDb);
}
