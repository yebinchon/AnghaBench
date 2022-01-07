
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
 int assert (int) ;
 int tdb_close (int *) ;
 int tdb_lsm_open (char*,char const*,int ,int **) ;
 int tdb_lsm_prepare_sync_crash (int *,int) ;
 int tdb_write (int *,void*,int,void*,int) ;
 int testCaseNDot () ;
 int testCaseProgress (int,int const,int ,int*) ;
 int testCksumArrayFree (int *) ;
 int testCksumArrayGet (int *,int) ;
 int * testCksumArrayNew (int *,int,int,int) ;
 int testCompareCksumLsmdb (char const*,int,int ,int ,int*) ;
 int testDatasourceEntry (int *,int,void**,int*,void**,int*) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (TYPE_1__ const*) ;
 int testRestoreDb (char const*,char*) ;
 int testSetupSavedLsmdb (char*,char const*,int *,int,int*) ;

__attribute__((used)) static void crash_test2(int bCompress, int *pRc){
  const char *DBNAME = "testdb.lsm";
  const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 12, 16, 1000, 1000};

  const int nIter = 200;
  const int nInsert = 20;

  int i;
  int iDot = 0;
  Datasource *pData;
  CksumDb *pCksumDb;
  TestDb *pDb;


  pData = testDatasourceNew(&defn);
  pCksumDb = testCksumArrayNew(pData, 100, 100+nInsert, 1);


  testSetupSavedLsmdb("", DBNAME, pData, 100, pRc);

  for(i=0; i<nIter && *pRc==0; i++){
    int iIns;
    int testrc = 0;

    testCaseProgress(i, nIter, testCaseNDot(), &iDot);


    testRestoreDb(DBNAME, "log");
    testrc = tdb_lsm_open("safety=2", DBNAME, 0, &pDb);
    assert( testrc==0 );


    tdb_lsm_prepare_sync_crash(pDb, 1 + (i%(nInsert+2)));
    for(iIns=0; iIns<nInsert; iIns++){
      void *pKey; int nKey;
      void *pVal; int nVal;

      testDatasourceEntry(pData, 100+iIns, &pKey, &nKey, &pVal, &nVal);
      testrc = tdb_write(pDb, pKey, nKey, pVal, nVal);
      if( testrc ) break;
    }
    tdb_close(pDb);


    testCompareCksumLsmdb(DBNAME, bCompress,
      testCksumArrayGet(pCksumDb, 100 + iIns),
      testCksumArrayGet(pCksumDb, 100 + iIns + 1),
      pRc
    );
  }

  testDatasourceFree(pData);
  testCksumArrayFree(pCksumDb);
}
