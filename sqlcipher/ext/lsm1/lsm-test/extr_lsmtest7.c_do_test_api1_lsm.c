
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int lsm_cursor ;


 int LSM_MISUSE ;
 int LSM_OK ;
 int LSM_SEEK_EQ ;
 int LSM_SEEK_GE ;
 int LSM_SEEK_LE ;
 int LSM_SEEK_LEFAST ;
 int lsm_csr_close (int *) ;
 int lsm_csr_first (int *) ;
 int lsm_csr_key (int *,void const**,int*) ;
 int lsm_csr_last (int *) ;
 int lsm_csr_next (int *) ;
 int lsm_csr_open (int *,int **) ;
 int lsm_csr_prev (int *) ;
 int lsm_csr_seek (int *,void const*,int,int ) ;
 int lsm_csr_valid (int *) ;
 int testCompareInt (int,int,int*) ;

__attribute__((used)) static void do_test_api1_lsm(lsm_db *pDb, int *pRc){
  int ret;
  lsm_cursor *pCsr;
  lsm_cursor *pCsr2;
  int nKey;
  const void *pKey;

  ret = lsm_csr_open(pDb, &pCsr);
  testCompareInt(LSM_OK, ret, pRc);

  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);

  ret = lsm_csr_seek(pCsr, "jjj", 3, LSM_SEEK_GE);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);

  ret = lsm_csr_seek(pCsr, "jjj", 3, LSM_SEEK_LE);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_OK, ret, pRc);

  ret = lsm_csr_seek(pCsr, "jjj", 3, LSM_SEEK_LEFAST);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);

  ret = lsm_csr_key(pCsr, &pKey, &nKey);
  testCompareInt(LSM_OK, ret, pRc);

  ret = lsm_csr_open(pDb, &pCsr2);
  testCompareInt(LSM_OK, ret, pRc);

  ret = lsm_csr_seek(pCsr2, pKey, nKey, LSM_SEEK_EQ);
  testCompareInt(LSM_OK, ret, pRc);
  testCompareInt(1, lsm_csr_valid(pCsr2), pRc);
  ret = lsm_csr_next(pCsr2);
  testCompareInt(LSM_MISUSE, ret, pRc);
  ret = lsm_csr_prev(pCsr2);
  testCompareInt(LSM_MISUSE, ret, pRc);

  lsm_csr_close(pCsr2);

  ret = lsm_csr_first(pCsr);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);

  ret = lsm_csr_last(pCsr);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);

  ret = lsm_csr_first(pCsr);
  while( lsm_csr_valid(pCsr) ){
    ret = lsm_csr_next(pCsr);
    testCompareInt(LSM_OK, ret, pRc);
  }
  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);

  ret = lsm_csr_last(pCsr);
  while( lsm_csr_valid(pCsr) ){
    ret = lsm_csr_prev(pCsr);
    testCompareInt(LSM_OK, ret, pRc);
  }
  ret = lsm_csr_prev(pCsr);
  testCompareInt(LSM_OK, ret, pRc);
  ret = lsm_csr_next(pCsr);
  testCompareInt(LSM_MISUSE, ret, pRc);

  lsm_csr_close(pCsr);
}
