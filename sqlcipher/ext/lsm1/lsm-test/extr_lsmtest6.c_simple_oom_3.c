
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;


 int LSMTEST6_TESTDB ;
 int LSM_OK ;
 int lsm_close (int *) ;
 int testOomFetchStr (int *,int *,char*,char*,int*) ;
 int testOomOpen (int *,int ,int **,int*) ;

__attribute__((used)) static void simple_oom_3(OomTest *pOom){
  int rc = LSM_OK;
  lsm_db *pDb;

  testOomOpen(pOom, LSMTEST6_TESTDB, &pDb, &rc);

  testOomFetchStr(pOom, pDb, "four", "sixteen", &rc);
  testOomFetchStr(pOom, pDb, "seven", "fourtynine", &rc);
  testOomFetchStr(pOom, pDb, "one", "one", &rc);
  testOomFetchStr(pOom, pDb, "eight", "sixtyfour", &rc);

  lsm_close(pDb);
}
