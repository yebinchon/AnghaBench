#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_5__ {int (* xCreate ) (int,char const* const*,int /*<<< orphan*/ **) ;int /*<<< orphan*/  (* xDestroy ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ sqlite3_tokenizer_module ;
typedef  int /*<<< orphan*/  sqlite3_tokenizer ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {int /*<<< orphan*/  base; int /*<<< orphan*/ * pTok; TYPE_1__ const* pMod; } ;
typedef  TYPE_2__ Fts3tokTable ;
typedef  int /*<<< orphan*/  Fts3Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FTS3_TOK_SCHEMA ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char const* const*,char***) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,TYPE_1__ const**,char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int,char const* const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
  sqlite3 *db,                    /* Database connection */
  void *pHash,                    /* Hash table of tokenizers */
  int argc,                       /* Number of elements in argv array */
  const char * const *argv,       /* xCreate/xConnect argument array */
  sqlite3_vtab **ppVtab,          /* OUT: New sqlite3_vtab object */
  char **pzErr                    /* OUT: sqlite3_malloc'd error message */
){
  Fts3tokTable *pTab = 0;
  const sqlite3_tokenizer_module *pMod = 0;
  sqlite3_tokenizer *pTok = 0;
  int rc;
  char **azDequote = 0;
  int nDequote;

  rc = FUNC4(db, FTS3_TOK_SCHEMA);
  if( rc!=SQLITE_OK ) return rc;

  nDequote = argc-3;
  rc = FUNC1(nDequote, &argv[3], &azDequote);

  if( rc==SQLITE_OK ){
    const char *zModule;
    if( nDequote<1 ){
      zModule = "simple";
    }else{
      zModule = azDequote[0];
    }
    rc = FUNC2((Fts3Hash*)pHash, zModule, &pMod, pzErr);
  }

  FUNC0( (rc==SQLITE_OK)==(pMod!=0) );
  if( rc==SQLITE_OK ){
    const char * const *azArg = (const char * const *)&azDequote[1];
    rc = pMod->xCreate((nDequote>1 ? nDequote-1 : 0), azArg, &pTok);
  }

  if( rc==SQLITE_OK ){
    pTab = (Fts3tokTable *)FUNC6(sizeof(Fts3tokTable));
    if( pTab==0 ){
      rc = SQLITE_NOMEM;
    }
  }

  if( rc==SQLITE_OK ){
    FUNC3(pTab, 0, sizeof(Fts3tokTable));
    pTab->pMod = pMod;
    pTab->pTok = pTok;
    *ppVtab = &pTab->base;
  }else{
    if( pTok ){
      pMod->xDestroy(pTok);
    }
  }

  FUNC5(azDequote);
  return rc;
}