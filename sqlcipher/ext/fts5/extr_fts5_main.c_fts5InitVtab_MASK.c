#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_12__ {char** pzErrmsg; } ;
struct TYPE_10__ {int /*<<< orphan*/  pIndex; TYPE_3__* pConfig; } ;
struct TYPE_11__ {TYPE_1__ p; int /*<<< orphan*/  pStorage; int /*<<< orphan*/ * pGlobal; } ;
typedef  int /*<<< orphan*/  Fts5Global ;
typedef  TYPE_2__ Fts5FullTable ;
typedef  TYPE_3__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_BEGIN ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const**,TYPE_3__**,char**) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int*,int) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static int FUNC10(
  int bCreate,                    /* True for xCreate, false for xConnect */
  sqlite3 *db,                    /* The SQLite database connection */
  void *pAux,                     /* Hash table containing tokenizers */
  int argc,                       /* Number of elements in argv array */
  const char * const *argv,       /* xCreate/xConnect argument array */
  sqlite3_vtab **ppVTab,          /* Write the resulting vtab structure here */
  char **pzErr                    /* Write any error message here */
){
  Fts5Global *pGlobal = (Fts5Global*)pAux;
  const char **azConfig = (const char**)argv;
  int rc = SQLITE_OK;             /* Return code */
  Fts5Config *pConfig = 0;        /* Results of parsing argc/argv */
  Fts5FullTable *pTab = 0;        /* New virtual table object */

  /* Allocate the new vtab object and parse the configuration */
  pTab = (Fts5FullTable*)FUNC8(&rc, sizeof(Fts5FullTable));
  if( rc==SQLITE_OK ){
    rc = FUNC4(pGlobal, db, argc, azConfig, &pConfig, pzErr);
    FUNC0( (rc==SQLITE_OK && *pzErr==0) || pConfig==0 );
  }
  if( rc==SQLITE_OK ){
    pTab->p.pConfig = pConfig;
    pTab->pGlobal = pGlobal;
  }

  /* Open the index sub-system */
  if( rc==SQLITE_OK ){
    rc = FUNC6(pConfig, bCreate, &pTab->p.pIndex, pzErr);
  }

  /* Open the storage sub-system */
  if( rc==SQLITE_OK ){
    rc = FUNC9(
        pConfig, pTab->p.pIndex, bCreate, &pTab->pStorage, pzErr
    );
  }

  /* Call sqlite3_declare_vtab() */
  if( rc==SQLITE_OK ){
    rc = FUNC3(pConfig);
  }

  /* Load the initial configuration */
  if( rc==SQLITE_OK ){
    FUNC0( pConfig->pzErrmsg==0 );
    pConfig->pzErrmsg = pzErr;
    rc = FUNC5(pTab->p.pIndex);
    FUNC7(pTab->p.pIndex);
    pConfig->pzErrmsg = 0;
  }

  if( rc!=SQLITE_OK ){
    FUNC2(pTab);
    pTab = 0;
  }else if( bCreate ){
    FUNC1(pTab, FTS5_BEGIN, 0);
  }
  *ppVTab = (sqlite3_vtab*)pTab;
  return rc;
}