
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsm_cursor ;
typedef int TestDb ;
struct TYPE_2__ {int nBuf; int * pCsr; void* pBuf; int db; } ;
typedef TYPE_1__ LsmDb ;


 int LSM_OK ;
 int LSM_SEEK_EQ ;
 int lsm_csr_close (int *) ;
 int lsm_csr_open (int ,int **) ;
 int lsm_csr_seek (int *,void*,int,int ) ;
 scalar_t__ lsm_csr_valid (int *) ;
 int lsm_csr_value (int *,void const**,int*) ;
 int memcpy (void*,void const*,int) ;
 int testFree (void*) ;
 void* testMalloc (int) ;

__attribute__((used)) static int test_lsm_fetch(
  TestDb *pTestDb,
  void *pKey,
  int nKey,
  void **ppVal,
  int *pnVal
){
  int rc;
  LsmDb *pDb = (LsmDb *)pTestDb;
  lsm_cursor *csr;

  if( pKey==0 ) return LSM_OK;

  if( pDb->pCsr==0 ){
    rc = lsm_csr_open(pDb->db, &csr);
    if( rc!=LSM_OK ) return rc;
  }else{
    csr = pDb->pCsr;
  }

  rc = lsm_csr_seek(csr, pKey, nKey, LSM_SEEK_EQ);
  if( rc==LSM_OK ){
    if( lsm_csr_valid(csr) ){
      const void *pVal; int nVal;
      rc = lsm_csr_value(csr, &pVal, &nVal);
      if( nVal>pDb->nBuf ){
        testFree(pDb->pBuf);
        pDb->pBuf = testMalloc(nVal*2);
        pDb->nBuf = nVal*2;
      }
      memcpy(pDb->pBuf, pVal, nVal);
      *ppVal = pDb->pBuf;
      *pnVal = nVal;
    }else{
      *ppVal = 0;
      *pnVal = -1;
    }
  }
  if( pDb->pCsr==0 ){
    lsm_csr_close(csr);
  }
  return rc;
}
