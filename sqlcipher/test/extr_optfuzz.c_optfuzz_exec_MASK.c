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
typedef  int /*<<< orphan*/  zLine ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_NULL ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int SQLITE_TEXT ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*) ; 

__attribute__((used)) static int FUNC17(
  sqlite3 *dbRun,             /* The database on which the SQL executes */
  const char *zSql,           /* The SQL to be executed */
  sqlite3 *dbOut,             /* Store results in this database */
  const char *zOutTab,        /* Store results in this table of dbOut */
  int *pnStmt,                /* Write the number of statements here */
  int *pnRow,                 /* Write the number of rows here */
  int bTrace                  /* Print query results if true */
){
  int rc = SQLITE_OK;         /* Return code */
  const char *zLeftover;      /* Tail of unprocessed SQL */
  sqlite3_stmt *pStmt = 0;    /* The current SQL statement */
  sqlite3_stmt *pIns = 0;     /* Statement to insert into dbOut */
  const char *zCol;           /* Single column value */
  int nCol;                   /* Number of output columns */
  char zLine[4000];           /* Complete row value */

  FUNC4(dbOut, "BEGIN");
  FUNC4(dbOut, "CREATE TABLE IF NOT EXISTS staging(x TEXT)");
  FUNC4(dbOut, "CREATE TABLE IF NOT EXISTS \"%w\"(x TEXT)", zOutTab);
  pIns = FUNC2(dbOut, "INSERT INTO staging(x) VALUES(?1)");
  *pnRow = *pnStmt = 0;
  while( rc==SQLITE_OK && zSql && zSql[0] ){
    zLeftover = 0;
    rc = FUNC11(dbRun, zSql, -1, &pStmt, &zLeftover);
    zSql = zLeftover;
    FUNC0( rc==SQLITE_OK || pStmt==0 );
    if( rc!=SQLITE_OK ){
      FUNC3("Error with [%s]\n%s\n", zSql, FUNC9(dbRun));
      break;
    }
    if( !pStmt ) continue;
    (*pnStmt)++;
    nCol = FUNC6(pStmt);
    FUNC4(dbOut, "DELETE FROM staging;");
    while( FUNC15(pStmt)==SQLITE_ROW ){
      int i, j;
      for(i=j=0; i<nCol && j<sizeof(zLine)-50; i++){
        int eType = FUNC8(pStmt, i);
        if( eType==SQLITE_NULL ){
          zCol = "NULL";
        }else{
          zCol = (const char*)FUNC7(pStmt, i);
        }
        if( i ) zLine[j++] = ',';
        if( eType==SQLITE_TEXT ){
          FUNC13(sizeof(zLine)-j, zLine+j, "'%q'", zCol);
        }else{
          FUNC13(sizeof(zLine)-j, zLine+j, "%s", zCol);
        }
        j += (int)FUNC16(zLine+j);
      }
      /* Detect if any row is too large and throw an error, because we will
      ** want to go back and look more closely at that case */
      if( j>=sizeof(zLine)-100 ){
        FUNC3("Excessively long output line: %d bytes\n" ,j);
        FUNC1(1);
      }
      if( bTrace ){
        FUNC3("%s\n", zLine);
      }
      (*pnRow)++;
      FUNC5(pIns, 1, zLine, j, SQLITE_TRANSIENT);
      rc = FUNC15(pIns);
      FUNC0( rc==SQLITE_DONE );
      rc = FUNC12(pIns);
    }
    FUNC4(dbOut,
      "INSERT INTO \"%w\"(x) VALUES('### %q ###')",
      zOutTab, FUNC14(pStmt)
    );
    FUNC4(dbOut, 
      "INSERT INTO \"%w\"(x) SELECT group_concat(x,char(10))"
      "  FROM (SELECT x FROM staging ORDER BY x)",
      zOutTab
    );
    FUNC4(dbOut, "COMMIT");
    FUNC10(pStmt);
    pStmt = 0;
  }
  FUNC10(pStmt);
  FUNC10(pIns);
  return rc;
}