
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ szCol; int iCol; int iRowid; int cksum; TYPE_1__* pConfig; int * pTermset; } ;
struct TYPE_3__ {int eDetail; int nPrefix; int* aPrefix; } ;
typedef int Fts5Termset ;
typedef TYPE_2__ Fts5IntegrityCtx ;




 int FTS5_DETAIL_NONE ;
 int FTS5_MAX_TOKEN_SIZE ;
 int FTS5_TOKEN_COLOCATED ;
 int SQLITE_OK ;
 int UNUSED_PARAM2 (int,int) ;
 int assert (int) ;
 int sqlite3Fts5IndexCharlenToBytelen (char const*,int,int const) ;
 int sqlite3Fts5IndexEntryCksum (int ,int,int,int,char const*,int) ;
 int sqlite3Fts5TermsetAdd (int *,int,char const*,int,int*) ;

__attribute__((used)) static int fts5StorageIntegrityCallback(
  void *pContext,
  int tflags,
  const char *pToken,
  int nToken,
  int iUnused1,
  int iUnused2
){
  Fts5IntegrityCtx *pCtx = (Fts5IntegrityCtx*)pContext;
  Fts5Termset *pTermset = pCtx->pTermset;
  int bPresent;
  int ii;
  int rc = SQLITE_OK;
  int iPos;
  int iCol;

  UNUSED_PARAM2(iUnused1, iUnused2);
  if( nToken>FTS5_MAX_TOKEN_SIZE ) nToken = FTS5_MAX_TOKEN_SIZE;

  if( (tflags & FTS5_TOKEN_COLOCATED)==0 || pCtx->szCol==0 ){
    pCtx->szCol++;
  }

  switch( pCtx->pConfig->eDetail ){
    case 128:
      iPos = pCtx->szCol-1;
      iCol = pCtx->iCol;
      break;

    case 129:
      iPos = pCtx->iCol;
      iCol = 0;
      break;

    default:
      assert( pCtx->pConfig->eDetail==FTS5_DETAIL_NONE );
      iPos = 0;
      iCol = 0;
      break;
  }

  rc = sqlite3Fts5TermsetAdd(pTermset, 0, pToken, nToken, &bPresent);
  if( rc==SQLITE_OK && bPresent==0 ){
    pCtx->cksum ^= sqlite3Fts5IndexEntryCksum(
        pCtx->iRowid, iCol, iPos, 0, pToken, nToken
    );
  }

  for(ii=0; rc==SQLITE_OK && ii<pCtx->pConfig->nPrefix; ii++){
    const int nChar = pCtx->pConfig->aPrefix[ii];
    int nByte = sqlite3Fts5IndexCharlenToBytelen(pToken, nToken, nChar);
    if( nByte ){
      rc = sqlite3Fts5TermsetAdd(pTermset, ii+1, pToken, nByte, &bPresent);
      if( bPresent==0 ){
        pCtx->cksum ^= sqlite3Fts5IndexEntryCksum(
            pCtx->iRowid, iCol, iPos, ii+1, pToken, nByte
        );
      }
    }
  }

  return rc;
}
