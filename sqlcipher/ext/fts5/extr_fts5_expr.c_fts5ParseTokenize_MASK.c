#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_6__ {int rc; TYPE_2__* pPhrase; } ;
typedef  TYPE_1__ TokenCtx ;
struct TYPE_7__ {int nTerm; char* zTerm; struct TYPE_7__* aTerm; struct TYPE_7__* pSynonym; } ;
typedef  TYPE_2__ Fts5ExprTerm ;
typedef  TYPE_2__ Fts5ExprPhrase ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 int FTS5_MAX_TOKEN_SIZE ; 
 int FTS5_TOKEN_COLOCATED ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int*,char const*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6(
  void *pContext,                 /* Pointer to Fts5InsertCtx object */
  int tflags,                     /* Mask of FTS5_TOKEN_* flags */
  const char *pToken,             /* Buffer containing token */
  int nToken,                     /* Size of token in bytes */
  int iUnused1,                   /* Start offset of token */
  int iUnused2                    /* End offset of token */
){
  int rc = SQLITE_OK;
  const int SZALLOC = 8;
  TokenCtx *pCtx = (TokenCtx*)pContext;
  Fts5ExprPhrase *pPhrase = pCtx->pPhrase;

  FUNC0(iUnused1, iUnused2);

  /* If an error has already occurred, this is a no-op */
  if( pCtx->rc!=SQLITE_OK ) return pCtx->rc;
  if( nToken>FTS5_MAX_TOKEN_SIZE ) nToken = FTS5_MAX_TOKEN_SIZE;

  if( pPhrase && pPhrase->nTerm>0 && (tflags & FTS5_TOKEN_COLOCATED) ){
    Fts5ExprTerm *pSyn;
    sqlite3_int64 nByte = sizeof(Fts5ExprTerm) + sizeof(Fts5Buffer) + nToken+1;
    pSyn = (Fts5ExprTerm*)FUNC4(nByte);
    if( pSyn==0 ){
      rc = SQLITE_NOMEM;
    }else{
      FUNC2(pSyn, 0, (size_t)nByte);
      pSyn->zTerm = ((char*)pSyn) + sizeof(Fts5ExprTerm) + sizeof(Fts5Buffer);
      FUNC1(pSyn->zTerm, pToken, nToken);
      pSyn->pSynonym = pPhrase->aTerm[pPhrase->nTerm-1].pSynonym;
      pPhrase->aTerm[pPhrase->nTerm-1].pSynonym = pSyn;
    }
  }else{
    Fts5ExprTerm *pTerm;
    if( pPhrase==0 || (pPhrase->nTerm % SZALLOC)==0 ){
      Fts5ExprPhrase *pNew;
      int nNew = SZALLOC + (pPhrase ? pPhrase->nTerm : 0);

      pNew = (Fts5ExprPhrase*)FUNC5(pPhrase, 
          sizeof(Fts5ExprPhrase) + sizeof(Fts5ExprTerm) * nNew
      );
      if( pNew==0 ){
        rc = SQLITE_NOMEM;
      }else{
        if( pPhrase==0 ) FUNC2(pNew, 0, sizeof(Fts5ExprPhrase));
        pCtx->pPhrase = pPhrase = pNew;
        pNew->nTerm = nNew - SZALLOC;
      }
    }

    if( rc==SQLITE_OK ){
      pTerm = &pPhrase->aTerm[pPhrase->nTerm++];
      FUNC2(pTerm, 0, sizeof(Fts5ExprTerm));
      pTerm->zTerm = FUNC3(&rc, pToken, nToken);
    }
  }

  pCtx->rc = rc;
  return rc;
}