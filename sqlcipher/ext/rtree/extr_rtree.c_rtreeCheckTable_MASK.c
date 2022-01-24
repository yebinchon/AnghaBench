#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  check ;
struct TYPE_7__ {char const* zDb; char const* zTab; scalar_t__ rc; int nDim; int bInt; char* zReport; int /*<<< orphan*/ ** aCheckMapping; int /*<<< orphan*/ * pGetNode; int /*<<< orphan*/  nNonLeaf; int /*<<< orphan*/  nLeaf; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ RtreeCheck ;

/* Variables and functions */
 int SQLITE_CORRUPT ; 
 scalar_t__ SQLITE_INTEGER ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char*,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(
  sqlite3 *db,                    /* Database handle to access db through */
  const char *zDb,                /* Name of db ("main", "temp" etc.) */
  const char *zTab,               /* Name of rtree table to check */
  char **pzReport                 /* OUT: sqlite3_malloc'd report text */
){
  RtreeCheck check;               /* Common context for various routines */
  sqlite3_stmt *pStmt = 0;        /* Used to find column count of rtree table */
  int bEnd = 0;                   /* True if transaction should be closed */
  int nAux = 0;                   /* Number of extra columns. */

  /* Initialize the context object */
  FUNC0(&check, 0, sizeof(check));
  check.db = db;
  check.zDb = zDb;
  check.zTab = zTab;

  /* If there is not already an open transaction, open one now. This is
  ** to ensure that the queries run as part of this integrity-check operate
  ** on a consistent snapshot.  */
  if( FUNC9(db) ){
    check.rc = FUNC7(db, "BEGIN", 0, 0, 0);
    bEnd = 1;
  }

  /* Find the number of auxiliary columns */
  if( check.rc==SQLITE_OK ){
    pStmt = FUNC4(&check, "SELECT * FROM %Q.'%q_rowid'", zDb, zTab);
    if( pStmt ){
      nAux = FUNC5(pStmt) - 2;
      FUNC8(pStmt);
    }
    check.rc = SQLITE_OK;
  }

  /* Find number of dimensions in the rtree table. */
  pStmt = FUNC4(&check, "SELECT * FROM %Q.%Q", zDb, zTab);
  if( pStmt ){
    int rc;
    check.nDim = (FUNC5(pStmt) - 1 - nAux) / 2;
    if( check.nDim<1 ){
      FUNC1(&check, "Schema corrupt or not an rtree");
    }else if( SQLITE_ROW==FUNC10(pStmt) ){
      check.bInt = (FUNC6(pStmt, 1)==SQLITE_INTEGER);
    }
    rc = FUNC8(pStmt);
    if( rc!=SQLITE_CORRUPT ) check.rc = rc;
  }

  /* Do the actual integrity-check */
  if( check.nDim>=1 ){
    if( check.rc==SQLITE_OK ){
      FUNC3(&check, 0, 0, 1);
    }
    FUNC2(&check, "_rowid", check.nLeaf);
    FUNC2(&check, "_parent", check.nNonLeaf);
  }

  /* Finalize SQL statements used by the integrity-check */
  FUNC8(check.pGetNode);
  FUNC8(check.aCheckMapping[0]);
  FUNC8(check.aCheckMapping[1]);

  /* If one was opened, close the transaction */
  if( bEnd ){
    int rc = FUNC7(db, "END", 0, 0, 0);
    if( check.rc==SQLITE_OK ) check.rc = rc;
  }
  *pzReport = check.zReport;
  return check.rc;
}