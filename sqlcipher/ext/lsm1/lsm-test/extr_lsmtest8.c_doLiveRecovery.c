
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lsm_db ;
typedef int TestDb ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
struct TYPE_6__ {int hdr2; int hdr1; } ;
typedef TYPE_1__ ShmHeader ;
typedef TYPE_2__ DatasourceDefn ;
typedef int Datasource ;


 int LSM_CONFIG_AUTOFLUSH ;
 int LSM_OK ;
 int TEST_CKSUM_BYTES ;
 int TEST_DATASOURCE_RANDOM ;
 TYPE_1__* getShmHeader (char const*) ;
 int lsm_begin (int *,int) ;
 int lsm_commit (int *,int ) ;
 int lsm_config (int *,int ,int*) ;
 int lsm_work (int *,int ,int ,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int * tdb_lsm (int *) ;
 int tdb_lsm_open (char*,char const*,int ,int **) ;
 int testCksumDatabase (int *,char*) ;
 int testClose (int **) ;
 int testCompareStr (char const*,char*,int*) ;
 int testCopyLsmdb (char const*,char const*) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (TYPE_2__ const*) ;
 int testDeleteDatasourceRange (int *,int *,int,int,int*) ;
 int testDeleteLsmdb (char const*) ;
 int testFree (TYPE_1__*) ;
 int testWriteDatasourceRange (int *,int *,int,int,int*) ;

__attribute__((used)) static void doLiveRecovery(const char *zDb, const char *zCksum, int *pRc){
  if( *pRc==LSM_OK ){
    const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 20, 25, 100, 500};
    Datasource *pData;
    const char *zCopy = "testcopy.lsm";
    char zCksum2[TEST_CKSUM_BYTES];
    TestDb *pDb = 0;
    int rc;

    pData = testDatasourceNew(&defn);

    testCopyLsmdb(zDb, zCopy);
    rc = tdb_lsm_open("test_no_recovery=1", zCopy, 0, &pDb);
    if( rc==0 ){
      ShmHeader *pHdr;
      lsm_db *db;
      testCksumDatabase(pDb, zCksum2);
      testCompareStr(zCksum, zCksum2, &rc);

      testWriteDatasourceRange(pDb, pData, 1, 10, &rc);
      testDeleteDatasourceRange(pDb, pData, 1, 10, &rc);


      pHdr = getShmHeader(zCopy);
      if( rc==0 && memcmp(&pHdr->hdr1, &pHdr->hdr2, sizeof(pHdr->hdr1)) ){
        rc = 1;
      }
      testFree(pHdr);

      if( rc==0 ){
        int nBuf = 64;
        db = tdb_lsm(pDb);
        lsm_config(db, LSM_CONFIG_AUTOFLUSH, &nBuf);
        lsm_begin(db, 1);
        lsm_commit(db, 0);
        rc = lsm_work(db, 0, 0, 0);
      }

      testCksumDatabase(pDb, zCksum2);
      testCompareStr(zCksum, zCksum2, &rc);
    }

    testDatasourceFree(pData);
    testClose(&pDb);
    testDeleteLsmdb(zCopy);
    *pRc = rc;
  }
}
