
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int lsm_cursor ;
typedef int OomTest ;


 int LSM_OK ;
 int LSM_SEEK_GE ;
 int LSM_SEEK_LE ;
 int lsm_csr_close (int *) ;
 int lsm_csr_key (int *,void const**,int*) ;
 int lsm_csr_next (int *) ;
 int lsm_csr_open (int *,int **) ;
 int lsm_csr_prev (int *) ;
 int lsm_csr_seek (int *,void const*,int,int ) ;
 scalar_t__ lsm_csr_valid (int *) ;
 int lsm_csr_value (int *,void const**,int*) ;
 int testOomAssertRc (int *,int) ;

__attribute__((used)) static void testOomScan(
  OomTest *pOom,
  lsm_db *pDb,
  int bReverse,
  const void *pKey, int nKey,
  int nScan,
  int *pRc
){
  if( *pRc==0 ){
    int rc;
    int iScan = 0;
    lsm_cursor *pCsr;
    int (*xAdvance)(lsm_cursor *) = 0;


    rc = lsm_csr_open(pDb, &pCsr);
    testOomAssertRc(pOom, rc);

    if( rc==LSM_OK ){
      if( bReverse ){
        rc = lsm_csr_seek(pCsr, pKey, nKey, LSM_SEEK_LE);
        xAdvance = lsm_csr_prev;
      }else{
        rc = lsm_csr_seek(pCsr, pKey, nKey, LSM_SEEK_GE);
        xAdvance = lsm_csr_next;
      }
    }
    testOomAssertRc(pOom, rc);

    while( rc==LSM_OK && lsm_csr_valid(pCsr) && iScan<nScan ){
      const void *p; int n;

      rc = lsm_csr_key(pCsr, &p, &n);
      testOomAssertRc(pOom, rc);
      if( rc==LSM_OK ){
        rc = lsm_csr_value(pCsr, &p, &n);
        testOomAssertRc(pOom, rc);
      }
      if( rc==LSM_OK ){
        rc = xAdvance(pCsr);
        testOomAssertRc(pOom, rc);
      }
      iScan++;
    }

    lsm_csr_close(pCsr);
    *pRc = rc;
  }
}
