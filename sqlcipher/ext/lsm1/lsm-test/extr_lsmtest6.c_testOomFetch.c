
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int lsm_cursor ;
typedef int OomTest ;


 int LSM_OK ;
 int lsm_csr_close (int *) ;
 int lsm_csr_key (int *,void const**,int*) ;
 int lsm_csr_open (int *,int **) ;
 int lsm_csr_seek (int *,void*,int,int ) ;
 int lsm_csr_valid (int *) ;
 int lsm_csr_value (int *,void const**,int*) ;
 scalar_t__ memcmp (void*,void const*,int) ;
 int testOomAssert (int *,int) ;
 int testOomAssertRc (int *,int) ;

__attribute__((used)) static void testOomFetch(
  OomTest *pOom,
  lsm_db *pDb,
  void *pKey, int nKey,
  void *pVal, int nVal,
  int *pRc
){
  testOomAssertRc(pOom, *pRc);
  if( *pRc==LSM_OK ){
    lsm_cursor *pCsr;
    int rc;

    rc = lsm_csr_open(pDb, &pCsr);
    if( rc==LSM_OK ) rc = lsm_csr_seek(pCsr, pKey, nKey, 0);
    testOomAssertRc(pOom, rc);

    if( rc==LSM_OK ){
      const void *p; int n;
      testOomAssert(pOom, lsm_csr_valid(pCsr));

      rc = lsm_csr_key(pCsr, &p, &n);
      testOomAssertRc(pOom, rc);
      testOomAssert(pOom, rc!=LSM_OK || (n==nKey && memcmp(pKey, p, nKey)==0) );
    }

    if( rc==LSM_OK ){
      const void *p; int n;
      testOomAssert(pOom, lsm_csr_valid(pCsr));

      rc = lsm_csr_value(pCsr, &p, &n);
      testOomAssertRc(pOom, rc);
      testOomAssert(pOom, rc!=LSM_OK || (n==nVal && memcmp(pVal, p, nVal)==0) );
    }

    lsm_csr_close(pCsr);
    *pRc = rc;
  }
}
