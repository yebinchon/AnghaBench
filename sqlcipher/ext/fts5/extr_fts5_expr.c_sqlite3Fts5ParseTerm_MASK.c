#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int sqlite3_int64 ;
struct TYPE_14__ {int rc; TYPE_4__* pPhrase; } ;
typedef  TYPE_2__ TokenCtx ;
struct TYPE_16__ {int nTerm; TYPE_1__* aTerm; } ;
struct TYPE_15__ {int rc; int nPhrase; TYPE_4__** apPhrase; int /*<<< orphan*/ * pConfig; } ;
struct TYPE_13__ {scalar_t__ bPrefix; } ;
typedef  int /*<<< orphan*/  Fts5Token ;
typedef  TYPE_3__ Fts5Parse ;
typedef  TYPE_4__ Fts5ExprPhrase ;
typedef  int /*<<< orphan*/  Fts5Config ;

/* Variables and functions */
 int FTS5_TOKENIZE_PREFIX ; 
 int FTS5_TOKENIZE_QUERY ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  fts5ParseTokenize ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_4__* FUNC4 (int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (TYPE_4__**,int) ; 
 scalar_t__ FUNC8 (char*) ; 

Fts5ExprPhrase *FUNC9(
  Fts5Parse *pParse,              /* Parse context */
  Fts5ExprPhrase *pAppend,        /* Phrase to append to */
  Fts5Token *pToken,              /* String to tokenize */
  int bPrefix                     /* True if there is a trailing "*" */
){
  Fts5Config *pConfig = pParse->pConfig;
  TokenCtx sCtx;                  /* Context object passed to callback */
  int rc;                         /* Tokenize return code */
  char *z = 0;

  FUNC2(&sCtx, 0, sizeof(TokenCtx));
  sCtx.pPhrase = pAppend;

  rc = FUNC1(pToken, &z);
  if( rc==SQLITE_OK ){
    int flags = FTS5_TOKENIZE_QUERY | (bPrefix ? FTS5_TOKENIZE_PREFIX : 0);
    int n;
    FUNC3(z);
    n = (int)FUNC8(z);
    rc = FUNC5(pConfig, flags, z, n, &sCtx, fts5ParseTokenize);
  }
  FUNC6(z);
  if( rc || (rc = sCtx.rc) ){
    pParse->rc = rc;
    FUNC0(sCtx.pPhrase);
    sCtx.pPhrase = 0;
  }else{

    if( pAppend==0 ){
      if( (pParse->nPhrase % 8)==0 ){
        sqlite3_int64 nByte = sizeof(Fts5ExprPhrase*) * (pParse->nPhrase + 8);
        Fts5ExprPhrase **apNew;
        apNew = (Fts5ExprPhrase**)FUNC7(pParse->apPhrase, nByte);
        if( apNew==0 ){
          pParse->rc = SQLITE_NOMEM;
          FUNC0(sCtx.pPhrase);
          return 0;
        }
        pParse->apPhrase = apNew;
      }
      pParse->nPhrase++;
    }

    if( sCtx.pPhrase==0 ){
      /* This happens when parsing a token or quoted phrase that contains
      ** no token characters at all. (e.g ... MATCH '""'). */
      sCtx.pPhrase = FUNC4(&pParse->rc, sizeof(Fts5ExprPhrase));
    }else if( sCtx.pPhrase->nTerm ){
      sCtx.pPhrase->aTerm[sCtx.pPhrase->nTerm-1].bPrefix = (u8)bPrefix;
    }
    pParse->apPhrase[pParse->nPhrase-1] = sCtx.pPhrase;
  }

  return sCtx.pPhrase;
}