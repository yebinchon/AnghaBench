
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int sqlite3_int64 ;
struct TYPE_14__ {int rc; TYPE_4__* pPhrase; } ;
typedef TYPE_2__ TokenCtx ;
struct TYPE_16__ {int nTerm; TYPE_1__* aTerm; } ;
struct TYPE_15__ {int rc; int nPhrase; TYPE_4__** apPhrase; int * pConfig; } ;
struct TYPE_13__ {scalar_t__ bPrefix; } ;
typedef int Fts5Token ;
typedef TYPE_3__ Fts5Parse ;
typedef TYPE_4__ Fts5ExprPhrase ;
typedef int Fts5Config ;


 int FTS5_TOKENIZE_PREFIX ;
 int FTS5_TOKENIZE_QUERY ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts5ExprPhraseFree (TYPE_4__*) ;
 int fts5ParseStringFromToken (int *,char**) ;
 int fts5ParseTokenize ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3Fts5Dequote (char*) ;
 TYPE_4__* sqlite3Fts5MallocZero (int*,int) ;
 int sqlite3Fts5Tokenize (int *,int,char*,int,TYPE_2__*,int ) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_realloc64 (TYPE_4__**,int) ;
 scalar_t__ strlen (char*) ;

Fts5ExprPhrase *sqlite3Fts5ParseTerm(
  Fts5Parse *pParse,
  Fts5ExprPhrase *pAppend,
  Fts5Token *pToken,
  int bPrefix
){
  Fts5Config *pConfig = pParse->pConfig;
  TokenCtx sCtx;
  int rc;
  char *z = 0;

  memset(&sCtx, 0, sizeof(TokenCtx));
  sCtx.pPhrase = pAppend;

  rc = fts5ParseStringFromToken(pToken, &z);
  if( rc==SQLITE_OK ){
    int flags = FTS5_TOKENIZE_QUERY | (bPrefix ? FTS5_TOKENIZE_PREFIX : 0);
    int n;
    sqlite3Fts5Dequote(z);
    n = (int)strlen(z);
    rc = sqlite3Fts5Tokenize(pConfig, flags, z, n, &sCtx, fts5ParseTokenize);
  }
  sqlite3_free(z);
  if( rc || (rc = sCtx.rc) ){
    pParse->rc = rc;
    fts5ExprPhraseFree(sCtx.pPhrase);
    sCtx.pPhrase = 0;
  }else{

    if( pAppend==0 ){
      if( (pParse->nPhrase % 8)==0 ){
        sqlite3_int64 nByte = sizeof(Fts5ExprPhrase*) * (pParse->nPhrase + 8);
        Fts5ExprPhrase **apNew;
        apNew = (Fts5ExprPhrase**)sqlite3_realloc64(pParse->apPhrase, nByte);
        if( apNew==0 ){
          pParse->rc = SQLITE_NOMEM;
          fts5ExprPhraseFree(sCtx.pPhrase);
          return 0;
        }
        pParse->apPhrase = apNew;
      }
      pParse->nPhrase++;
    }

    if( sCtx.pPhrase==0 ){


      sCtx.pPhrase = sqlite3Fts5MallocZero(&pParse->rc, sizeof(Fts5ExprPhrase));
    }else if( sCtx.pPhrase->nTerm ){
      sCtx.pPhrase->aTerm[sCtx.pPhrase->nTerm-1].bPrefix = (u8)bPrefix;
    }
    pParse->apPhrase[pParse->nPhrase-1] = sCtx.pPhrase;
  }

  return sCtx.pPhrase;
}
