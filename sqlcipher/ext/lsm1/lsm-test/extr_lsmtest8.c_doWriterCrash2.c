
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_7__ {int* aCksum; } ;
struct TYPE_6__ {int bWriter; TYPE_4__ hdr2; TYPE_4__ hdr1; } ;
typedef TYPE_1__ ShmHeader ;
typedef int Datasource ;


 int TEST_CKSUM_BYTES ;
 int doLiveRecovery (char*,char*,int*) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 int setupDatabase1 (int *,int **) ;
 int tdb_lsm_open (char*,char*,int,int **) ;
 int testBegin (int *,int,int*) ;
 int testCksumDatabase (int *,char*) ;
 int testClose (int **) ;
 int testCommit (int *,int ,int*) ;
 int testFree (TYPE_1__*) ;
 TYPE_1__* testMalloc (int) ;
 int testReadFile (char*,int ,void*,int,int*) ;
 int testWriteDatasourceRange (int *,int *,int,int,int*) ;
 int testWriteFile (char*,int ,void*,int,int*) ;

__attribute__((used)) static void doWriterCrash2(int *pRc){
  int rc = 0;
  TestDb *pDb = 0;
  Datasource *pData = 0;

  rc = tdb_lsm_open("autowork=0", "testdb.lsm", 1, &pDb);
  if( rc==0 ){
    ShmHeader *pHdr1;
    ShmHeader *pHdr2;
    char zCksum1[TEST_CKSUM_BYTES];
    char zCksum2[TEST_CKSUM_BYTES];

    pHdr1 = testMalloc(sizeof(ShmHeader));
    pHdr2 = testMalloc(sizeof(ShmHeader));
    setupDatabase1(pDb, &pData);


    testReadFile("testdb.lsm-shm", 0, (void *)pHdr1, sizeof(ShmHeader), &rc);
    testCksumDatabase(pDb, zCksum1);


    testBegin(pDb, 2, &rc);
    testWriteDatasourceRange(pDb, pData, 30000, 200, &rc);
    testCommit(pDb, 0, &rc);


    testReadFile("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    testCksumDatabase(pDb, zCksum2);
    doLiveRecovery("testdb.lsm", zCksum2, &rc);


    memcpy(&pHdr2->hdr1, &pHdr1->hdr1, sizeof(pHdr1->hdr1));
    pHdr2->bWriter = 1;
    testWriteFile("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    doLiveRecovery("testdb.lsm", zCksum1, &rc);


    memcpy(&pHdr2->hdr1, &pHdr2->hdr2, sizeof(pHdr1->hdr1));
    memcpy(&pHdr2->hdr2, &pHdr1->hdr1, sizeof(pHdr1->hdr1));
    pHdr2->bWriter = 1;
    testWriteFile("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    doLiveRecovery("testdb.lsm", zCksum2, &rc);


    memcpy(&pHdr2->hdr2, &pHdr2->hdr1, sizeof(pHdr1->hdr1));
    pHdr2->hdr1.aCksum[0] = 5;
    pHdr2->hdr1.aCksum[0] = 6;
    pHdr2->bWriter = 1;
    testWriteFile("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    doLiveRecovery("testdb.lsm", zCksum2, &rc);


    memcpy(&pHdr2->hdr1, &pHdr2->hdr2, sizeof(pHdr1->hdr1));
    pHdr2->hdr2.aCksum[0] = 5;
    pHdr2->hdr2.aCksum[0] = 6;
    pHdr2->bWriter = 1;
    testWriteFile("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    doLiveRecovery("testdb.lsm", zCksum2, &rc);

    testFree(pHdr1);
    testFree(pHdr2);
    testClose(&pDb);
  }

  *pRc = rc;
}
