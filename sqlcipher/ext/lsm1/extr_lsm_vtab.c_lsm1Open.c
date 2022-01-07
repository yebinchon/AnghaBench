
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_6__ {int nVal; int pDb; } ;
typedef TYPE_1__ lsm1_vtab ;
struct TYPE_7__ {int pLsmCur; int base; int * aiLen; int * aeType; int * aiOfst; } ;
typedef TYPE_2__ lsm1_cursor ;


 int LSM_OK ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int lsm_csr_open (int ,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_free (TYPE_2__*) ;
 TYPE_2__* sqlite3_malloc64 (int) ;

__attribute__((used)) static int lsm1Open(sqlite3_vtab *pVtab, sqlite3_vtab_cursor **ppCursor){
  lsm1_vtab *p = (lsm1_vtab*)pVtab;
  lsm1_cursor *pCur;
  int rc;
  pCur = sqlite3_malloc64( sizeof(*pCur)
                 + p->nVal*(sizeof(pCur->aiOfst)+sizeof(pCur->aiLen)+1) );
  if( pCur==0 ) return SQLITE_NOMEM;
  memset(pCur, 0, sizeof(*pCur));
  pCur->aiOfst = (u32*)&pCur[1];
  pCur->aiLen = &pCur->aiOfst[p->nVal];
  pCur->aeType = (u8*)&pCur->aiLen[p->nVal];
  *ppCursor = &pCur->base;
  rc = lsm_csr_open(p->pDb, &pCur->pLsmCur);
  if( rc==LSM_OK ){
    rc = SQLITE_OK;
  }else{
    sqlite3_free(pCur);
    *ppCursor = 0;
    rc = SQLITE_ERROR;
  }
  return rc;
}
