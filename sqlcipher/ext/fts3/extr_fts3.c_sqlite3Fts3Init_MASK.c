#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_tokenizer_module ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Fts3Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FTS3_HASH_STRING ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fts3Module ; 
 int /*<<< orphan*/  hashDestroy ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const**) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC17(sqlite3 *db){
  int rc = SQLITE_OK;
  Fts3Hash *pHash = 0;
  const sqlite3_tokenizer_module *pSimple = 0;
  const sqlite3_tokenizer_module *pPorter = 0;
#ifndef SQLITE_DISABLE_FTS3_UNICODE
  const sqlite3_tokenizer_module *pUnicode = 0;
#endif

#ifdef SQLITE_ENABLE_ICU
  const sqlite3_tokenizer_module *pIcu = 0;
  sqlite3Fts3IcuTokenizerModule(&pIcu);
#endif

#ifndef SQLITE_DISABLE_FTS3_UNICODE
  FUNC12(&pUnicode);
#endif

#ifdef SQLITE_TEST
  rc = sqlite3Fts3InitTerm(db);
  if( rc!=SQLITE_OK ) return rc;
#endif

  rc = FUNC6(db);
  if( rc!=SQLITE_OK ) return rc;

  FUNC11(&pSimple);
  FUNC10(&pPorter);

  /* Allocate and initialize the hash-table used to store tokenizers. */
  pHash = FUNC15(sizeof(Fts3Hash));
  if( !pHash ){
    rc = SQLITE_NOMEM;
  }else{
    FUNC3(pHash, FTS3_HASH_STRING, 1);
  }

  /* Load the built-in tokenizers into the hash table */
  if( rc==SQLITE_OK ){
    if( FUNC4(pHash, "simple", 7, (void *)pSimple)
     || FUNC4(pHash, "porter", 7, (void *)pPorter) 

#ifndef SQLITE_DISABLE_FTS3_UNICODE
     || FUNC4(pHash, "unicode61", 10, (void *)pUnicode) 
#endif
#ifdef SQLITE_ENABLE_ICU
     || (pIcu && sqlite3Fts3HashInsert(pHash, "icu", 4, (void *)pIcu))
#endif
    ){
      rc = SQLITE_NOMEM;
    }
  }

#ifdef SQLITE_TEST
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts3ExprInitTestInterface(db, pHash);
  }
#endif

  /* Create the virtual table wrapper around the hash-table and overload 
  ** the four scalar functions. If this is successful, register the
  ** module with sqlite.
  */
  if( SQLITE_OK==rc 
   && SQLITE_OK==(rc = FUNC7(db, pHash, "fts3_tokenizer"))
   && SQLITE_OK==(rc = FUNC16(db, "snippet", -1))
   && SQLITE_OK==(rc = FUNC16(db, "offsets", 1))
   && SQLITE_OK==(rc = FUNC16(db, "matchinfo", 1))
   && SQLITE_OK==(rc = FUNC16(db, "matchinfo", 2))
   && SQLITE_OK==(rc = FUNC16(db, "optimize", 1))
  ){
    rc = FUNC13(
        db, "fts3", &fts3Module, (void *)pHash, hashDestroy
    );
    if( rc==SQLITE_OK ){
      rc = FUNC13(
          db, "fts4", &fts3Module, (void *)pHash, 0
      );
    }
    if( rc==SQLITE_OK ){
      rc = FUNC9(db, (void *)pHash);
    }
    return rc;
  }


  /* An error has occurred. Delete the hash table and return the error code. */
  FUNC0( rc!=SQLITE_OK );
  if( pHash ){
    FUNC2(pHash);
    FUNC14(pHash);
  }
  return rc;
}