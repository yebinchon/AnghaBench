
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsm_cursor ;
typedef int TestDb ;
struct TYPE_2__ {int * pCsr; int db; } ;
typedef TYPE_1__ LsmDb ;


 int LSM_OK ;
 int LSM_SEEK_GE ;
 int LSM_SEEK_LE ;
 int MIN (int,int) ;
 int lsm_csr_close (int *) ;
 int lsm_csr_first (int *) ;
 int lsm_csr_key (int *,void const**,int*) ;
 int lsm_csr_last (int *) ;
 int lsm_csr_next (int *) ;
 int lsm_csr_open (int ,int **) ;
 int lsm_csr_prev (int *) ;
 int lsm_csr_seek (int *,void*,int,int ) ;
 scalar_t__ lsm_csr_valid (int *) ;
 int lsm_csr_value (int *,void const**,int*) ;
 int memcmp (void*,void const*,int ) ;

__attribute__((used)) static int test_lsm_scan(
  TestDb *pTestDb,
  void *pCtx,
  int bReverse,
  void *pFirst, int nFirst,
  void *pLast, int nLast,
  void (*xCallback)(void *, void *, int , void *, int)
){
  LsmDb *pDb = (LsmDb *)pTestDb;
  lsm_cursor *csr;
  lsm_cursor *csr2 = 0;
  int rc;

  if( pDb->pCsr==0 ){
    rc = lsm_csr_open(pDb->db, &csr);
    if( rc!=LSM_OK ) return rc;
  }else{
    rc = LSM_OK;
    csr = pDb->pCsr;
  }





  if( pLast && pFirst ){
    if( bReverse ){
      rc = lsm_csr_seek(csr, pFirst, nFirst, LSM_SEEK_LE);
    }else{
      rc = lsm_csr_seek(csr, pLast, nLast, LSM_SEEK_GE);
    }
  }

  if( bReverse ){
    if( pLast ){
      rc = lsm_csr_seek(csr, pLast, nLast, LSM_SEEK_LE);
    }else{
      rc = lsm_csr_last(csr);
    }
  }else{
    if( pFirst ){
      rc = lsm_csr_seek(csr, pFirst, nFirst, LSM_SEEK_GE);
    }else{
      rc = lsm_csr_first(csr);
    }
  }

  while( rc==LSM_OK && lsm_csr_valid(csr) ){
    const void *pKey; int nKey;
    const void *pVal; int nVal;
    int cmp;

    lsm_csr_key(csr, &pKey, &nKey);
    lsm_csr_value(csr, &pVal, &nVal);

    if( bReverse && pFirst ){
      cmp = memcmp(pFirst, pKey, MIN(nKey, nFirst));
      if( cmp>0 || (cmp==0 && nFirst>nKey) ) break;
    }else if( bReverse==0 && pLast ){
      cmp = memcmp(pLast, pKey, MIN(nKey, nLast));
      if( cmp<0 || (cmp==0 && nLast<nKey) ) break;
    }

    xCallback(pCtx, (void *)pKey, nKey, (void *)pVal, nVal);

    if( bReverse ){
      rc = lsm_csr_prev(csr);
    }else{
      rc = lsm_csr_next(csr);
    }
  }

  if( pDb->pCsr==0 ){
    lsm_csr_close(csr);
  }
  return rc;
}
