
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;


 int LSM_OK ;
 int lsm_new (int ,int **) ;
 int lsm_open (int *,char const*) ;
 int tdb_lsm_env () ;
 int testOomAssertRc (int *,int) ;

__attribute__((used)) static void testOomOpen(
  OomTest *pOom,
  const char *zName,
  lsm_db **ppDb,
  int *pRc
){
  if( *pRc==LSM_OK ){
    int rc;
    rc = lsm_new(tdb_lsm_env(), ppDb);
    if( rc==LSM_OK ) rc = lsm_open(*ppDb, zName);
    testOomAssertRc(pOom, rc);
    *pRc = rc;
  }
}
