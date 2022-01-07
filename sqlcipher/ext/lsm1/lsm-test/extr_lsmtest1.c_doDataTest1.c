
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_3__ {int nRow; int nVerify; int bTestScan; int nTest; int defn; } ;
typedef TYPE_1__ Datatest1 ;
typedef int Datasource ;


 int LSM_OK ;
 int tdb_close (int *) ;
 int testBegin (int *,int,int*) ;
 int testCaseFinish (int) ;
 int testCaseNDot () ;
 int testCaseProgress (int,int,int,int*) ;
 int testCommit (int *,int ,int*) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (int *) ;
 int testDbContents (int *,int *,int,int,int,int ,int ,int*) ;
 int testDeleteDatasourceRange (int *,int *,int,int,int*) ;
 int * testOpen (char const*,int,int*) ;
 int testReopen (int **,int*) ;
 int testReopenRecover (int **,int*) ;
 int testWriteDatasourceRange (int *,int *,int,int,int*) ;

__attribute__((used)) static void doDataTest1(
  const char *zSystem,
  int bRecover,
  Datatest1 *p,
  int *pRc
){
  int i;
  int iDot;
  int rc = LSM_OK;
  Datasource *pData;
  TestDb *pDb;
  int iToggle = 0;


  pDb = testOpen(zSystem, 1, &rc);
  pData = testDatasourceNew(&p->defn);

  i = 0;
  iDot = 0;
  while( rc==LSM_OK && i<p->nRow ){


    testWriteDatasourceRange(pDb, pData, i, p->nVerify, &rc);
    i += p->nVerify;

    if( iToggle ) testBegin(pDb, 1, &rc);

    testDbContents(pDb, pData, p->nRow, 0, i-1, p->nTest, p->bTestScan, &rc);
    if( iToggle ) testCommit(pDb, 0, &rc);
    iToggle = (iToggle+1)%2;

    if( bRecover ){
      testReopenRecover(&pDb, &rc);
    }else{
      testReopen(&pDb, &rc);
    }


    testDbContents(pDb, pData, p->nRow, 0, i-1, p->nTest, p->bTestScan, &rc);


    testCaseProgress(i, p->nRow, testCaseNDot()/2, &iDot);
  }

  i = 0;
  iDot = 0;
  while( rc==LSM_OK && i<p->nRow ){


    testDeleteDatasourceRange(pDb, pData, i, p->nVerify, &rc);
    i += p->nVerify;


    testDbContents(pDb, pData, p->nRow, i, p->nRow-1,p->nTest,p->bTestScan,&rc);


    if( bRecover ){
      testReopenRecover(&pDb, &rc);
    }else{
      testReopen(&pDb, &rc);
    }


    testDbContents(pDb, pData, p->nRow, i, p->nRow-1,p->nTest,p->bTestScan,&rc);


    testCaseProgress(i, p->nRow, testCaseNDot()/2, &iDot);
  }


  testDatasourceFree(pData);
  tdb_close(pDb);
  testCaseFinish(rc);
  *pRc = rc;
}
