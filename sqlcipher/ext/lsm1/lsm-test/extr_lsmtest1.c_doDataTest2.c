
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_3__ {int nIter; int nWrite; int nRange; int defn; } ;
typedef TYPE_1__ Datatest2 ;
typedef int Datasource ;


 int LSM_CONFIG_AUTOFLUSH ;
 int LSM_OK ;
 int MIN (int,int) ;
 int lsm_config (scalar_t__,int ,int*) ;
 scalar_t__ tdb_lsm (int *) ;
 int testCaseFinish (int) ;
 int testCaseNDot () ;
 int testCaseProgress (int,int,int ,int*) ;
 int testClose (int **) ;
 int testCompareDb (int *,int,int,int *,int *,int*) ;
 int testControlDb (int **) ;
 int testDatasourceEntry (int *,int,void**,int*,int ,int ) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (int *) ;
 int testDeleteRange (int *,void*,int,void*,int,int*) ;
 int testFree (void*) ;
 void* testMallocCopy (void*,int) ;
 int * testOpen (char const*,int,int*) ;
 int testReopen (int **,int*) ;
 int testReopenRecover (int **,int*) ;
 int testWriteDatasource (int *,int *,int,int*) ;

__attribute__((used)) static void doDataTest2(
  const char *zSystem,
  int bRecover,
  Datatest2 *p,
  int *pRc
){
  TestDb *pDb;
  TestDb *pControl;
  Datasource *pData;
  int i;
  int rc = LSM_OK;
  int iDot = 0;


  pDb = testOpen(zSystem, 1, &rc);
  pData = testDatasourceNew(&p->defn);
  rc = testControlDb(&pControl);

  if( tdb_lsm(pDb) ){
    int nBuf = 32 * 1024 * 1024;
    lsm_config(tdb_lsm(pDb), LSM_CONFIG_AUTOFLUSH, &nBuf);
  }

  for(i=0; rc==0 && i<p->nIter; i++){
    void *pKey1; int nKey1;
    void *pKey2; int nKey2;
    int ii;
    int nRange = MIN(p->nIter*p->nWrite, p->nRange);

    for(ii=0; rc==0 && ii<p->nWrite; ii++){
      int iKey = (i*p->nWrite + ii) % p->nRange;
      testWriteDatasource(pControl, pData, iKey, &rc);
      testWriteDatasource(pDb, pData, iKey, &rc);
    }

    testDatasourceEntry(pData, i+1000000, &pKey1, &nKey1, 0, 0);
    pKey1 = testMallocCopy(pKey1, nKey1);
    testDatasourceEntry(pData, i+2000000, &pKey2, &nKey2, 0, 0);

    testDeleteRange(pDb, pKey1, nKey1, pKey2, nKey2, &rc);
    testDeleteRange(pControl, pKey1, nKey1, pKey2, nKey2, &rc);
    testFree(pKey1);

    testCompareDb(pData, nRange, i, pControl, pDb, &rc);
    if( bRecover ){
      testReopenRecover(&pDb, &rc);
    }else{
      testReopen(&pDb, &rc);
    }
    testCompareDb(pData, nRange, i, pControl, pDb, &rc);


    testCaseProgress(i, p->nIter, testCaseNDot(), &iDot);
  }

  testClose(&pDb);
  testClose(&pControl);
  testDatasourceFree(pData);
  testCaseFinish(rc);
  *pRc = rc;
}
