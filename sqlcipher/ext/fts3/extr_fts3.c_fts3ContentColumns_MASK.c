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
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 char* FUNC8 (char*,char const*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(
  sqlite3 *db,                    /* Database handle */
  const char *zDb,                /* Name of db (i.e. "main", "temp" etc.) */
  const char *zTbl,               /* Name of content table */
  const char ***pazCol,           /* OUT: Malloc'd array of column names */
  int *pnCol,                     /* OUT: Size of array *pazCol */
  int *pnStr,                     /* OUT: Bytes of string content */
  char **pzErr                    /* OUT: error message */
){
  int rc = SQLITE_OK;             /* Return code */
  char *zSql;                     /* "SELECT *" statement on zTbl */  
  sqlite3_stmt *pStmt = 0;        /* Compiled version of zSql */

  zSql = FUNC8("SELECT * FROM %Q.%Q", zDb, zTbl);
  if( !zSql ){
    rc = SQLITE_NOMEM;
  }else{
    rc = FUNC9(db, zSql, -1, &pStmt, 0);
    if( rc!=SQLITE_OK ){
      FUNC1(pzErr, "%s", FUNC4(db));
    }
  }
  FUNC6(zSql);

  if( rc==SQLITE_OK ){
    const char **azCol;           /* Output array */
    sqlite3_int64 nStr = 0;       /* Size of all column names (incl. 0x00) */
    int nCol;                     /* Number of table columns */
    int i;                        /* Used to iterate through columns */

    /* Loop through the returned columns. Set nStr to the number of bytes of
    ** space required to store a copy of each column name, including the
    ** nul-terminator byte.  */
    nCol = FUNC2(pStmt);
    for(i=0; i<nCol; i++){
      const char *zCol = FUNC3(pStmt, i);
      nStr += FUNC10(zCol) + 1;
    }

    /* Allocate and populate the array to return. */
    azCol = (const char **)FUNC7(sizeof(char *) * nCol + nStr);
    if( azCol==0 ){
      rc = SQLITE_NOMEM;
    }else{
      char *p = (char *)&azCol[nCol];
      for(i=0; i<nCol; i++){
        const char *zCol = FUNC3(pStmt, i);
        int n = (int)FUNC10(zCol)+1;
        FUNC0(p, zCol, n);
        azCol[i] = p;
        p += n;
      }
    }
    FUNC5(pStmt);

    /* Set the output variables. */
    *pnCol = nCol;
    *pnStr = nStr;
    *pazCol = azCol;
  }

  return rc;
}