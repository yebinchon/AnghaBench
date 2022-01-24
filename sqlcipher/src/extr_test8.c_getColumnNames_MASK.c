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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*,char*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(
  sqlite3 *db, 
  const char *zTab,
  char ***paCol, 
  int *pnCol
){
  char **aCol = 0;
  char *zSql;
  sqlite3_stmt *pStmt = 0;
  int rc = SQLITE_OK;
  int nCol = 0;

  /* Prepare the statement "SELECT * FROM <tbl>". The column names
  ** of the result set of the compiled SELECT will be the same as
  ** the column names of table <tbl>.
  */
  zSql = FUNC6("SELECT * FROM %Q", zTab);
  if( !zSql ){
    rc = SQLITE_NOMEM;
    goto out;
  }
  rc = FUNC7(db, zSql, -1, &pStmt, 0);
  FUNC5(zSql);

  if( rc==SQLITE_OK ){
    int ii;
    int nBytes;
    char *zSpace;
    nCol = FUNC2(pStmt);

    /* Figure out how much space to allocate for the array of column names 
    ** (including space for the strings themselves). Then allocate it.
    */
    nBytes = sizeof(char *) * nCol;
    for(ii=0; ii<nCol; ii++){
      const char *zName = FUNC3(pStmt, ii);
      if( !zName ){
        rc = SQLITE_NOMEM;
        goto out;
      }
      nBytes += (int)FUNC9(zName)+1;
    }
    aCol = (char **)FUNC1(nBytes);
    if( !aCol ){
      rc = SQLITE_NOMEM;
      goto out;
    }

    /* Copy the column names into the allocated space and set up the
    ** pointers in the aCol[] array.
    */
    zSpace = (char *)(&aCol[nCol]);
    for(ii=0; ii<nCol; ii++){
      aCol[ii] = zSpace;
      FUNC8(nBytes, zSpace, "%s", FUNC3(pStmt,ii));
      zSpace += (int)FUNC9(zSpace) + 1;
    }
    FUNC0( (zSpace-nBytes)==(char *)aCol );
  }

  *paCol = aCol;
  *pnCol = nCol;

out:
  FUNC4(pStmt);
  return rc;
}