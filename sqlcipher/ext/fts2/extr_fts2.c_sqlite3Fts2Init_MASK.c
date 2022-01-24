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
typedef  int /*<<< orphan*/  fts2Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FTS2_HASH_STRING ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fts2Module ; 
 int /*<<< orphan*/  hashDestroy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const**) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC12(sqlite3 *db){
  int rc = SQLITE_OK;
  fts2Hash *pHash = 0;
  const sqlite3_tokenizer_module *pSimple = 0;
  const sqlite3_tokenizer_module *pPorter = 0;
  const sqlite3_tokenizer_module *pIcu = 0;

  FUNC7(&pSimple);
  FUNC6(&pPorter);
#ifdef SQLITE_ENABLE_ICU
  sqlite3Fts2IcuTokenizerModule(&pIcu);
#endif

  /* Allocate and initialize the hash-table used to store tokenizers. */
  pHash = FUNC10(sizeof(fts2Hash));
  if( !pHash ){
    rc = SQLITE_NOMEM;
  }else{
    FUNC2(pHash, FTS2_HASH_STRING, 1);
  }

  /* Load the built-in tokenizers into the hash table */
  if( rc==SQLITE_OK ){
    if( FUNC3(pHash, "simple", 7, (void *)pSimple)
     || FUNC3(pHash, "porter", 7, (void *)pPorter) 
     || (pIcu && FUNC3(pHash, "icu", 4, (void *)pIcu))
    ){
      rc = SQLITE_NOMEM;
    }
  }

  /* Create the virtual table wrapper around the hash-table and overload 
  ** the two scalar functions. If this is successful, register the
  ** module with sqlite.
  */
  if( SQLITE_OK==rc 
   && SQLITE_OK==(rc = FUNC5(db, pHash, "fts2_tokenizer"))
   && SQLITE_OK==(rc = FUNC11(db, "snippet", -1))
   && SQLITE_OK==(rc = FUNC11(db, "offsets", -1))
   && SQLITE_OK==(rc = FUNC11(db, "optimize", -1))
#ifdef SQLITE_TEST
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "dump_terms", -1))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "dump_doclist", -1))
#endif
  ){
    return FUNC8(
        db, "fts2", &fts2Module, (void *)pHash, hashDestroy
    );
  }

  /* An error has occurred. Delete the hash table and return the error code. */
  FUNC0( rc!=SQLITE_OK );
  if( pHash ){
    FUNC1(pHash);
    FUNC9(pHash);
  }
  return rc;
}