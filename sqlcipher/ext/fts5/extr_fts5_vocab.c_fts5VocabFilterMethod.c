
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_14__ {scalar_t__ zLeTerm; TYPE_2__* pFts5; int bEof; int pIter; void* nLeTerm; } ;
struct TYPE_13__ {int eType; } ;
struct TYPE_11__ {TYPE_1__* pConfig; int * pIndex; } ;
struct TYPE_10__ {scalar_t__ eDetail; } ;
typedef TYPE_4__ Fts5VocabTable ;
typedef TYPE_5__ Fts5VocabCursor ;
typedef int Fts5Index ;


 int FTS5INDEX_QUERY_SCAN ;
 scalar_t__ FTS5_DETAIL_NONE ;
 int FTS5_VOCAB_INSTANCE ;
 int FTS5_VOCAB_TERM_EQ ;
 int FTS5_VOCAB_TERM_GE ;
 int FTS5_VOCAB_TERM_LE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAM2 (char const*,int) ;
 int fts5VocabInstanceNewTerm (TYPE_5__*) ;
 int fts5VocabNextMethod (TYPE_3__*) ;
 int fts5VocabResetCursor (TYPE_5__*) ;
 int memcpy (scalar_t__,char const*,void*) ;
 int sqlite3Fts5IndexQuery (int *,char const*,int,int,int ,int *) ;
 scalar_t__ sqlite3_malloc (void*) ;
 void* sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int fts5VocabFilterMethod(
  sqlite3_vtab_cursor *pCursor,
  int idxNum,
  const char *zUnused,
  int nUnused,
  sqlite3_value **apVal
){
  Fts5VocabTable *pTab = (Fts5VocabTable*)pCursor->pVtab;
  Fts5VocabCursor *pCsr = (Fts5VocabCursor*)pCursor;
  int eType = pTab->eType;
  int rc = SQLITE_OK;

  int iVal = 0;
  int f = FTS5INDEX_QUERY_SCAN;
  const char *zTerm = 0;
  int nTerm = 0;

  sqlite3_value *pEq = 0;
  sqlite3_value *pGe = 0;
  sqlite3_value *pLe = 0;

  UNUSED_PARAM2(zUnused, nUnused);

  fts5VocabResetCursor(pCsr);
  if( idxNum & FTS5_VOCAB_TERM_EQ ) pEq = apVal[iVal++];
  if( idxNum & FTS5_VOCAB_TERM_GE ) pGe = apVal[iVal++];
  if( idxNum & FTS5_VOCAB_TERM_LE ) pLe = apVal[iVal++];

  if( pEq ){
    zTerm = (const char *)sqlite3_value_text(pEq);
    nTerm = sqlite3_value_bytes(pEq);
    f = 0;
  }else{
    if( pGe ){
      zTerm = (const char *)sqlite3_value_text(pGe);
      nTerm = sqlite3_value_bytes(pGe);
    }
    if( pLe ){
      const char *zCopy = (const char *)sqlite3_value_text(pLe);
      if( zCopy==0 ) zCopy = "";
      pCsr->nLeTerm = sqlite3_value_bytes(pLe);
      pCsr->zLeTerm = sqlite3_malloc(pCsr->nLeTerm+1);
      if( pCsr->zLeTerm==0 ){
        rc = SQLITE_NOMEM;
      }else{
        memcpy(pCsr->zLeTerm, zCopy, pCsr->nLeTerm+1);
      }
    }
  }

  if( rc==SQLITE_OK ){
    Fts5Index *pIndex = pCsr->pFts5->pIndex;
    rc = sqlite3Fts5IndexQuery(pIndex, zTerm, nTerm, f, 0, &pCsr->pIter);
  }
  if( rc==SQLITE_OK && eType==FTS5_VOCAB_INSTANCE ){
    rc = fts5VocabInstanceNewTerm(pCsr);
  }
  if( rc==SQLITE_OK && !pCsr->bEof
   && (eType!=FTS5_VOCAB_INSTANCE
    || pCsr->pFts5->pConfig->eDetail!=FTS5_DETAIL_NONE)
  ){
    rc = fts5VocabNextMethod(pCursor);
  }

  return rc;
}
