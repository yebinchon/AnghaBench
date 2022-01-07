
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;


 int LSMTEST6_TESTDB ;
 int LSM_OK ;
 int lsm_close (int *) ;
 int testDeleteLsmdb (int ) ;
 int testOomOpen (int *,int ,int **,int*) ;
 int testOomWriteStr (int *,int *,char*,char*,int*) ;

__attribute__((used)) static void simple_oom_4(OomTest *pOom){
  int rc = LSM_OK;
  lsm_db *pDb;

  testDeleteLsmdb(LSMTEST6_TESTDB);
  testOomOpen(pOom, LSMTEST6_TESTDB, &pDb, &rc);

  testOomWriteStr(pOom, pDb, "123", "onetwothree", &rc);
  testOomWriteStr(pOom, pDb, "456", "fourfivesix", &rc);
  testOomWriteStr(pOom, pDb, "789", "seveneightnine", &rc);
  testOomWriteStr(pOom, pDb, "123", "teneleventwelve", &rc);
  testOomWriteStr(pOom, pDb, "456", "fourteenfifteensixteen", &rc);

  lsm_close(pDb);
}
