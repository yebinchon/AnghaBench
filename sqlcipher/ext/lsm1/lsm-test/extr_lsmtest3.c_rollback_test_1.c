
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;
typedef int CksumDb ;


 int TEST_CKSUM_BYTES ;
 char* getName (char const*) ;
 int tdb_begin (int *,int) ;
 int tdb_close (int *) ;
 int tdb_commit (int *,int ) ;
 int tdb_open (char const*,int ,int,int **) ;
 int tdb_rollback (int *,int) ;
 scalar_t__ tdb_transaction_support (int *) ;
 int testCaseFinish (int) ;
 int testCaseSkip () ;
 int testCaseStart (int*,char*) ;
 int testCksumArrayFree (int *) ;
 int testCksumArrayGet (int *,int) ;
 int * testCksumArrayNew (int *,int ,int const,int) ;
 int testCksumDatabase (int *,char*) ;
 int testCompareInt (int,int,int*) ;
 int testCompareStr (char*,int ,int*) ;
 int testCountDatabase (int *) ;
 int testFree (char*) ;
 int testWriteDatasourceRange (int *,int *,int,int,int*) ;

__attribute__((used)) static int rollback_test_1(
  const char *zSystem,
  Datasource *pData
){
  const int nRepeat = 100;

  TestDb *pDb;
  int rc;
  int i;
  CksumDb *pCksum;
  char *zName;

  zName = getName(zSystem);
  testCaseStart(&rc, zName);
  testFree(zName);

  pCksum = testCksumArrayNew(pData, 0, nRepeat*100, 100);
  pDb = 0;
  rc = tdb_open(zSystem, 0, 1, &pDb);
  if( pDb && tdb_transaction_support(pDb)==0 ){
    testCaseSkip();
    goto skip_rollback_test;
  }

  for(i=0; i<nRepeat && rc==0; i++){
    char zCksum[TEST_CKSUM_BYTES];
    int nCurrent = (((i+1)/2) * 100);
    int nDbRow;
    int iTrans;


    nDbRow = testCountDatabase(pDb);
    testCompareInt(nCurrent, nDbRow, &rc);

    for(iTrans=2; iTrans<=6 && rc==0; iTrans++){
      tdb_begin(pDb, iTrans);
      testWriteDatasourceRange(pDb, pData, nCurrent, 100, &rc);
      nCurrent += 100;
    }

    testCksumDatabase(pDb, zCksum);
    testCompareStr(zCksum, testCksumArrayGet(pCksum, nCurrent), &rc);

    for(iTrans=6; iTrans>2 && rc==0; iTrans--){
      tdb_rollback(pDb, iTrans);
      nCurrent -= 100;
      testCksumDatabase(pDb, zCksum);
      testCompareStr(zCksum, testCksumArrayGet(pCksum, nCurrent), &rc);
    }

    if( i%2 ){
      tdb_rollback(pDb, 0);
      nCurrent -= 100;
      testCksumDatabase(pDb, zCksum);
      testCompareStr(zCksum, testCksumArrayGet(pCksum, nCurrent), &rc);
    }else{
      tdb_commit(pDb, 0);
    }
  }
  testCaseFinish(rc);

 skip_rollback_test:
  tdb_close(pDb);
  testCksumArrayFree(pCksum);
  return rc;
}
