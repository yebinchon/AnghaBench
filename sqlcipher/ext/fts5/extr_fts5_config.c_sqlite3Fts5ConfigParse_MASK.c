#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_9__ {int iCookie; char** azCol; char const* zName; int bColumnsize; int bPrefixIndex; scalar_t__ pTok; scalar_t__ zContent; scalar_t__ eContent; scalar_t__ zContentRowid; void* zDb; int /*<<< orphan*/  eDetail; int /*<<< orphan*/ * abUnindexed; int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  Fts5Global ;
typedef  TYPE_1__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FTS5_CONTENT_NONE ; 
 scalar_t__ FTS5_CONTENT_NORMAL ; 
 int /*<<< orphan*/  FTS5_DETAIL_FULL ; 
 int /*<<< orphan*/  FTS5_RANK_NAME ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC2 (int*,char const*,char**,int*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char*,char*,char**) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char*,char*,char**) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int*,int) ; 
 scalar_t__ FUNC10 (int*,char*,void*,char const*,char const*) ; 
 void* FUNC11 (int*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int) ; 
 char* FUNC14 (char*,char const*) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ ) ; 

int FUNC16(
  Fts5Global *pGlobal,
  sqlite3 *db,
  int nArg,                       /* Number of arguments */
  const char **azArg,             /* Array of nArg CREATE VIRTUAL TABLE args */
  Fts5Config **ppOut,             /* OUT: Results of parse */
  char **pzErr                    /* OUT: Error message */
){
  int rc = SQLITE_OK;             /* Return code */
  Fts5Config *pRet;               /* New object to return */
  int i;
  sqlite3_int64 nByte;

  *ppOut = pRet = (Fts5Config*)FUNC13(sizeof(Fts5Config));
  if( pRet==0 ) return SQLITE_NOMEM;
  FUNC7(pRet, 0, sizeof(Fts5Config));
  pRet->db = db;
  pRet->iCookie = -1;

  nByte = nArg * (sizeof(char*) + sizeof(u8));
  pRet->azCol = (char**)FUNC9(&rc, nByte);
  pRet->abUnindexed = (u8*)&pRet->azCol[nArg];
  pRet->zDb = FUNC11(&rc, azArg[1], -1);
  pRet->zName = FUNC11(&rc, azArg[2], -1);
  pRet->bColumnsize = 1;
  pRet->eDetail = FTS5_DETAIL_FULL;
#ifdef SQLITE_DEBUG
  pRet->bPrefixIndex = 1;
#endif
  if( rc==SQLITE_OK && FUNC15(pRet->zName, FTS5_RANK_NAME)==0 ){
    *pzErr = FUNC14("reserved fts5 table name: %s", pRet->zName);
    rc = SQLITE_ERROR;
  }

  for(i=3; rc==SQLITE_OK && i<nArg; i++){
    const char *zOrig = azArg[i];
    const char *z;
    char *zOne = 0;
    char *zTwo = 0;
    int bOption = 0;
    int bMustBeCol = 0;

    z = FUNC2(&rc, zOrig, &zOne, &bMustBeCol);
    z = FUNC6(z);
    if( z && *z=='=' ){
      bOption = 1;
      z++;
      if( bMustBeCol ) z = 0;
    }
    z = FUNC6(z);
    if( z && z[0] ){
      int bDummy;
      z = FUNC2(&rc, z, &zTwo, &bDummy);
      if( z && z[0] ) z = 0;
    }

    if( rc==SQLITE_OK ){
      if( z==0 ){
        *pzErr = FUNC14("parse error in \"%s\"", zOrig);
        rc = SQLITE_ERROR;
      }else{
        if( bOption ){
          rc = FUNC5(pGlobal, pRet, zOne, zTwo?zTwo:"", pzErr);
        }else{
          rc = FUNC4(pRet, zOne, zTwo, pzErr);
          zOne = 0;
        }
      }
    }

    FUNC12(zOne);
    FUNC12(zTwo);
  }

  /* If a tokenizer= option was successfully parsed, the tokenizer has
  ** already been allocated. Otherwise, allocate an instance of the default
  ** tokenizer (unicode61) now.  */
  if( rc==SQLITE_OK && pRet->pTok==0 ){
    rc = FUNC1(pGlobal, pRet);
  }

  /* If no zContent option was specified, fill in the default values. */
  if( rc==SQLITE_OK && pRet->zContent==0 ){
    const char *zTail = 0;
    FUNC0( pRet->eContent==FTS5_CONTENT_NORMAL 
         || pRet->eContent==FTS5_CONTENT_NONE 
    );
    if( pRet->eContent==FTS5_CONTENT_NORMAL ){
      zTail = "content";
    }else if( pRet->bColumnsize ){
      zTail = "docsize";
    }

    if( zTail ){
      pRet->zContent = FUNC10(
          &rc, "%Q.'%q_%s'", pRet->zDb, pRet->zName, zTail
      );
    }
  }

  if( rc==SQLITE_OK && pRet->zContentRowid==0 ){
    pRet->zContentRowid = FUNC11(&rc, "rowid", -1);
  }

  /* Formulate the zContentExprlist text */
  if( rc==SQLITE_OK ){
    rc = FUNC3(pRet);
  }

  if( rc!=SQLITE_OK ){
    FUNC8(pRet);
    *ppOut = 0;
  }
  return rc;
}