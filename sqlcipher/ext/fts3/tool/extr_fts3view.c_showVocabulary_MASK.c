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
typedef  int /*<<< orphan*/  sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(sqlite3 *db, const char *zTab){
  char *zAux;
  sqlite3_uint64 r;
  sqlite3_stmt *pStmt;
  int nDoc = 0;
  int nToken = 0;
  int nOccurrence = 0;
  int nTop;
  int n, i;

  FUNC10(sizeof(r), &r);
  zAux = FUNC9("viewer_%llx", zTab, r);
  FUNC4(db, "BEGIN");
  pStmt = FUNC2(db, "SELECT count(*) FROM %Q", zTab);
  while( FUNC11(pStmt)==SQLITE_ROW ){
    nDoc = FUNC5(pStmt, 0);
  }
  FUNC7(pStmt);
  FUNC3("Number of documents...................... %9d\n", nDoc);

  FUNC4(db, "CREATE VIRTUAL TABLE %s USING fts4aux(%Q)", zAux, zTab);
  pStmt = FUNC2(db, 
             "SELECT count(*), sum(occurrences) FROM %s WHERE col='*'",
             zAux);
  while( FUNC11(pStmt)==SQLITE_ROW ){
    nToken = FUNC5(pStmt, 0);
    nOccurrence = FUNC5(pStmt, 1);
  }
  FUNC7(pStmt);
  FUNC3("Total tokens in all documents............ %9d\n", nOccurrence);
  FUNC3("Total number of distinct tokens.......... %9d\n", nToken);
  if( nToken==0 ) goto end_vocab;

  n = 0;
  pStmt = FUNC2(db, "SELECT count(*) FROM %s"
                      " WHERE col='*' AND occurrences==1", zAux);
  while( FUNC11(pStmt)==SQLITE_ROW ){
    n = FUNC5(pStmt, 0);
  }
  FUNC7(pStmt);
  FUNC3("Tokens used exactly once................. %9d %5.2f%%\n",
          n, n*100.0/nToken);

  n = 0;
  pStmt = FUNC2(db, "SELECT count(*) FROM %s"
                      " WHERE col='*' AND documents==1", zAux);
  while( FUNC11(pStmt)==SQLITE_ROW ){
    n = FUNC5(pStmt, 0);
  }
  FUNC7(pStmt);
  FUNC3("Tokens used in only one document......... %9d %5.2f%%\n",
          n, n*100.0/nToken);

  if( nDoc>=2000 ){
    n = 0;
    pStmt = FUNC2(db, "SELECT count(*) FROM %s"
                        " WHERE col='*' AND occurrences<=%d", zAux, nDoc/1000);
    while( FUNC11(pStmt)==SQLITE_ROW ){
      n = FUNC5(pStmt, 0);
    }
    FUNC7(pStmt);
    FUNC3("Tokens used in 0.1%% or less of docs...... %9d %5.2f%%\n",
            n, n*100.0/nToken);
  }

  if( nDoc>=200 ){
    n = 0;
    pStmt = FUNC2(db, "SELECT count(*) FROM %s"
                        " WHERE col='*' AND occurrences<=%d", zAux, nDoc/100);
    while( FUNC11(pStmt)==SQLITE_ROW ){
      n = FUNC5(pStmt, 0);
    }
    FUNC7(pStmt);
    FUNC3("Tokens used in 1%% or less of docs........ %9d %5.2f%%\n",
            n, n*100.0/nToken);
  }

  nTop = FUNC0(FUNC1("top", 1, "25"));
  FUNC3("The %d most common tokens:\n", nTop);
  pStmt = FUNC2(db,
            "SELECT term, documents FROM %s"
            " WHERE col='*'"
            " ORDER BY documents DESC, term"
            " LIMIT %d", zAux, nTop);
  i = 0;
  while( FUNC11(pStmt)==SQLITE_ROW ){
    i++;
    n = FUNC5(pStmt, 1);
    FUNC3("  %2d. %-30s %9d docs %5.2f%%\n", i,
      FUNC6(pStmt, 0), n, n*100.0/nDoc);
  }
  FUNC7(pStmt);

end_vocab:
  FUNC4(db, "ROLLBACK");
  FUNC8(zAux);
}