
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int atEof; scalar_t__ isDesc; scalar_t__ nKey2; scalar_t__ zData; scalar_t__ pKey2; int pLsmCur; scalar_t__ bUnique; } ;
typedef TYPE_1__ lsm1_cursor ;


 int LSM_OK ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int lsm_csr_key (int ,void const**,int*) ;
 int lsm_csr_next (int ) ;
 int lsm_csr_prev (int ) ;
 scalar_t__ lsm_csr_valid (int ) ;
 int memcmp (int const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int lsm1Next(sqlite3_vtab_cursor *cur){
  lsm1_cursor *pCur = (lsm1_cursor*)cur;
  int rc = LSM_OK;
  if( pCur->bUnique ){
    pCur->atEof = 1;
  }else{
    if( pCur->isDesc ){
      rc = lsm_csr_prev(pCur->pLsmCur);
    }else{
      rc = lsm_csr_next(pCur->pLsmCur);
    }
    if( rc==LSM_OK && lsm_csr_valid(pCur->pLsmCur)==0 ){
      pCur->atEof = 1;
    }
    if( pCur->pKey2 && pCur->atEof==0 ){
      const u8 *pVal;
      u32 nVal;
      assert( pCur->isDesc==0 );
      rc = lsm_csr_key(pCur->pLsmCur, (const void**)&pVal, (int*)&nVal);
      if( rc==LSM_OK ){
        u32 len = pCur->nKey2;
        int c;
        if( len>nVal ) len = nVal;
        c = memcmp(pVal, pCur->pKey2, len);
        if( c==0 ) c = nVal - pCur->nKey2;
        if( c>0 ) pCur->atEof = 1;
      }
    }
    pCur->zData = 0;
  }
  return rc==LSM_OK ? SQLITE_OK : SQLITE_ERROR;
}
