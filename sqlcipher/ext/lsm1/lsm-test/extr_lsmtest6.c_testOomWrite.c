
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;


 int LSM_OK ;
 int lsm_insert (int *,void*,int,void*,int) ;
 int testOomAssertRc (int *,int) ;

__attribute__((used)) static void testOomWrite(
  OomTest *pOom,
  lsm_db *pDb,
  void *pKey, int nKey,
  void *pVal, int nVal,
  int *pRc
){
  testOomAssertRc(pOom, *pRc);
  if( *pRc==LSM_OK ){
    int rc;

    rc = lsm_insert(pDb, pKey, nKey, pVal, nVal);
    testOomAssertRc(pOom, rc);

    *pRc = rc;
  }
}
