
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;


 int lsm_close (int *) ;
 int lsm_new (int ,int **) ;
 int tdb_lsm_env () ;
 int testOomAssertRc (int *,int) ;

__attribute__((used)) static void simple_oom_1(OomTest *pOom){
  int rc;
  lsm_db *pDb;

  rc = lsm_new(tdb_lsm_env(), &pDb);
  testOomAssertRc(pOom, rc);

  lsm_close(pDb);
}
