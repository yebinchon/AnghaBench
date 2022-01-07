
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_6__ {int rc; TYPE_2__* pPhrase; } ;
typedef TYPE_1__ TokenCtx ;
struct TYPE_7__ {int nTerm; char* zTerm; struct TYPE_7__* aTerm; struct TYPE_7__* pSynonym; } ;
typedef TYPE_2__ Fts5ExprTerm ;
typedef TYPE_2__ Fts5ExprPhrase ;
typedef int Fts5Buffer ;


 int FTS5_MAX_TOKEN_SIZE ;
 int FTS5_TOKEN_COLOCATED ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAM2 (int,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 char* sqlite3Fts5Strndup (int*,char const*,int) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 scalar_t__ sqlite3_realloc64 (TYPE_2__*,int) ;

__attribute__((used)) static int fts5ParseTokenize(
  void *pContext,
  int tflags,
  const char *pToken,
  int nToken,
  int iUnused1,
  int iUnused2
){
  int rc = SQLITE_OK;
  const int SZALLOC = 8;
  TokenCtx *pCtx = (TokenCtx*)pContext;
  Fts5ExprPhrase *pPhrase = pCtx->pPhrase;

  UNUSED_PARAM2(iUnused1, iUnused2);


  if( pCtx->rc!=SQLITE_OK ) return pCtx->rc;
  if( nToken>FTS5_MAX_TOKEN_SIZE ) nToken = FTS5_MAX_TOKEN_SIZE;

  if( pPhrase && pPhrase->nTerm>0 && (tflags & FTS5_TOKEN_COLOCATED) ){
    Fts5ExprTerm *pSyn;
    sqlite3_int64 nByte = sizeof(Fts5ExprTerm) + sizeof(Fts5Buffer) + nToken+1;
    pSyn = (Fts5ExprTerm*)sqlite3_malloc64(nByte);
    if( pSyn==0 ){
      rc = SQLITE_NOMEM;
    }else{
      memset(pSyn, 0, (size_t)nByte);
      pSyn->zTerm = ((char*)pSyn) + sizeof(Fts5ExprTerm) + sizeof(Fts5Buffer);
      memcpy(pSyn->zTerm, pToken, nToken);
      pSyn->pSynonym = pPhrase->aTerm[pPhrase->nTerm-1].pSynonym;
      pPhrase->aTerm[pPhrase->nTerm-1].pSynonym = pSyn;
    }
  }else{
    Fts5ExprTerm *pTerm;
    if( pPhrase==0 || (pPhrase->nTerm % SZALLOC)==0 ){
      Fts5ExprPhrase *pNew;
      int nNew = SZALLOC + (pPhrase ? pPhrase->nTerm : 0);

      pNew = (Fts5ExprPhrase*)sqlite3_realloc64(pPhrase,
          sizeof(Fts5ExprPhrase) + sizeof(Fts5ExprTerm) * nNew
      );
      if( pNew==0 ){
        rc = SQLITE_NOMEM;
      }else{
        if( pPhrase==0 ) memset(pNew, 0, sizeof(Fts5ExprPhrase));
        pCtx->pPhrase = pPhrase = pNew;
        pNew->nTerm = nNew - SZALLOC;
      }
    }

    if( rc==SQLITE_OK ){
      pTerm = &pPhrase->aTerm[pPhrase->nTerm++];
      memset(pTerm, 0, sizeof(Fts5ExprTerm));
      pTerm->zTerm = sqlite3Fts5Strndup(&rc, pToken, nToken);
    }
  }

  pCtx->rc = rc;
  return rc;
}
