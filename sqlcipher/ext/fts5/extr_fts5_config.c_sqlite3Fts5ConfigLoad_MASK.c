#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {scalar_t__* pzErrmsg; int iCookie; int /*<<< orphan*/  db; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  nHashSize; int /*<<< orphan*/  nCrisisMerge; int /*<<< orphan*/  nUsermerge; int /*<<< orphan*/  nAutomerge; int /*<<< orphan*/  pgsz; } ;
typedef  TYPE_1__ Fts5Config ;

/* Variables and functions */
 int FTS5_CURRENT_VERSION ; 
 int /*<<< orphan*/  FTS5_DEFAULT_AUTOMERGE ; 
 int /*<<< orphan*/  FTS5_DEFAULT_CRISISMERGE ; 
 int /*<<< orphan*/  FTS5_DEFAULT_HASHSIZE ; 
 int /*<<< orphan*/  FTS5_DEFAULT_PAGE_SIZE ; 
 int /*<<< orphan*/  FTS5_DEFAULT_USERMERGE ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int*) ; 
 char* FUNC2 (int*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(Fts5Config *pConfig, int iCookie){
  const char *zSelect = "SELECT k, v FROM %Q.'%q_config'";
  char *zSql;
  sqlite3_stmt *p = 0;
  int rc = SQLITE_OK;
  int iVersion = 0;

  /* Set default values */
  pConfig->pgsz = FTS5_DEFAULT_PAGE_SIZE;
  pConfig->nAutomerge = FTS5_DEFAULT_AUTOMERGE;
  pConfig->nUsermerge = FTS5_DEFAULT_USERMERGE;
  pConfig->nCrisisMerge = FTS5_DEFAULT_CRISISMERGE;
  pConfig->nHashSize = FTS5_DEFAULT_HASHSIZE;

  zSql = FUNC2(&rc, zSelect, pConfig->zDb, pConfig->zName);
  if( zSql ){
    rc = FUNC8(pConfig->db, zSql, -1, &p, 0);
    FUNC6(zSql);
  }

  FUNC0( rc==SQLITE_OK || p==0 );
  if( rc==SQLITE_OK ){
    while( SQLITE_ROW==FUNC9(p) ){
      const char *zK = (const char*)FUNC3(p, 0);
      sqlite3_value *pVal = FUNC4(p, 1);
      if( 0==FUNC10(zK, "version") ){
        iVersion = FUNC11(pVal);
      }else{
        int bDummy = 0;
        FUNC1(pConfig, zK, pVal, &bDummy);
      }
    }
    rc = FUNC5(p);
  }
  
  if( rc==SQLITE_OK && iVersion!=FTS5_CURRENT_VERSION ){
    rc = SQLITE_ERROR;
    if( pConfig->pzErrmsg ){
      FUNC0( 0==*pConfig->pzErrmsg );
      *pConfig->pzErrmsg = FUNC7(
          "invalid fts5 file format (found %d, expected %d) - run 'rebuild'",
          iVersion, FTS5_CURRENT_VERSION
      );
    }
  }

  if( rc==SQLITE_OK ){
    pConfig->iCookie = iCookie;
  }
  return rc;
}