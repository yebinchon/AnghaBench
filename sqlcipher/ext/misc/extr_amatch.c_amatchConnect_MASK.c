#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {scalar_t__ zClassName; scalar_t__ zSelf; scalar_t__ zVocabTab; scalar_t__ zVocabWord; scalar_t__ zVocabLang; scalar_t__ zCostTab; int /*<<< orphan*/  base; void* zDb; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ amatch_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char**) ; 
 char* FUNC3 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_1__* FUNC7 (int) ; 
 void* FUNC8 (char*,...) ; 

__attribute__((used)) static int FUNC9(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int rc = SQLITE_OK;             /* Return code */
  amatch_vtab *pNew = 0;          /* New virtual table */
  const char *zModule = argv[0];
  const char *zDb = argv[1];
  const char *zVal;
  int i;

  (void)pAux;
  *ppVtab = 0;
  pNew = FUNC7( sizeof(*pNew) );
  if( pNew==0 ) return SQLITE_NOMEM;
  rc = SQLITE_NOMEM;
  FUNC4(pNew, 0, sizeof(*pNew));
  pNew->db = db;
  pNew->zClassName = FUNC8("%s", zModule);
  if( pNew->zClassName==0 ) goto amatchConnectError;
  pNew->zDb = FUNC8("%s", zDb);
  if( pNew->zDb==0 ) goto amatchConnectError;
  pNew->zSelf = FUNC8("%s", argv[2]);
  if( pNew->zSelf==0 ) goto amatchConnectError;
  for(i=3; i<argc; i++){
    zVal = FUNC3("vocabulary_table", argv[i]);
    if( zVal ){
      FUNC6(pNew->zVocabTab);
      pNew->zVocabTab = FUNC0(zVal);
      if( pNew->zVocabTab==0 ) goto amatchConnectError;
      continue;
    }
    zVal = FUNC3("vocabulary_word", argv[i]);
    if( zVal ){
      FUNC6(pNew->zVocabWord);
      pNew->zVocabWord = FUNC0(zVal);
      if( pNew->zVocabWord==0 ) goto amatchConnectError;
      continue;
    }
    zVal = FUNC3("vocabulary_language", argv[i]);
    if( zVal ){
      FUNC6(pNew->zVocabLang);
      pNew->zVocabLang = FUNC0(zVal);
      if( pNew->zVocabLang==0 ) goto amatchConnectError;
      continue;
    }
    zVal = FUNC3("edit_distances", argv[i]);
    if( zVal ){
      FUNC6(pNew->zCostTab);
      pNew->zCostTab = FUNC0(zVal);
      if( pNew->zCostTab==0 ) goto amatchConnectError;
      continue;
    }
    *pzErr = FUNC8("unrecognized argument: [%s]\n", argv[i]);
    FUNC1(pNew);
    *ppVtab = 0;
    return SQLITE_ERROR;
  }
  rc = SQLITE_OK;
  if( pNew->zCostTab==0 ){
    *pzErr = FUNC8("no edit_distances table specified");
    rc = SQLITE_ERROR;
  }else{
    rc = FUNC2(db, pNew, pzErr);
  }
  if( rc==SQLITE_OK ){
    rc = FUNC5(db,
           "CREATE TABLE x(word,distance,language,"
           "command HIDDEN,nword HIDDEN)"
         );
#define AMATCH_COL_WORD       0
#define AMATCH_COL_DISTANCE   1
#define AMATCH_COL_LANGUAGE   2
#define AMATCH_COL_COMMAND    3
#define AMATCH_COL_NWORD      4
  }
  if( rc!=SQLITE_OK ){
    FUNC1(pNew);
  }
  *ppVtab = &pNew->base;
  return rc;

amatchConnectError:
  FUNC1(pNew);
  return rc;
}