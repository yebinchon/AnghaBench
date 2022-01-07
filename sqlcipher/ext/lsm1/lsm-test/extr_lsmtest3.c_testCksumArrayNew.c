
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_5__ {int nFirst; int nLast; int nStep; char** azCksum; } ;
typedef int Datasource ;
typedef TYPE_1__ CksumDb ;


 int TEST_CKSUM_BYTES ;
 int assert (int) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int tdb_close (int *) ;
 int tdb_open (char*,char*,int,int **) ;
 int testCksumDatabase (int *,char*) ;
 int testWriteDatasourceRange (int *,int *,int,int,int*) ;

CksumDb *testCksumArrayNew(
  Datasource *pData,
  int nFirst,
  int nLast,
  int nStep
){
  TestDb *pDb;
  CksumDb *pRet;
  int i;
  int nEntry;
  int rc = 0;

  assert( nLast>=nFirst && ((nLast-nFirst)%nStep)==0 );

  pRet = malloc(sizeof(CksumDb));
  memset(pRet, 0, sizeof(CksumDb));
  pRet->nFirst = nFirst;
  pRet->nLast = nLast;
  pRet->nStep = nStep;
  nEntry = 1 + ((nLast - nFirst) / nStep);



  pRet->azCksum = (char **)malloc(nEntry * (sizeof(char *) + TEST_CKSUM_BYTES));
  for(i=0; i<nEntry; i++){
    char *pStart = (char *)(&pRet->azCksum[nEntry]);
    pRet->azCksum[i] = &pStart[i * TEST_CKSUM_BYTES];
  }

  tdb_open("lsm", "tempdb.lsm", 1, &pDb);
  testWriteDatasourceRange(pDb, pData, 0, nFirst, &rc);
  for(i=0; i<nEntry; i++){
    testCksumDatabase(pDb, pRet->azCksum[i]);
    if( i==nEntry ) break;
    testWriteDatasourceRange(pDb, pData, nFirst+i*nStep, nStep, &rc);
  }

  tdb_close(pDb);

  return pRet;
}
