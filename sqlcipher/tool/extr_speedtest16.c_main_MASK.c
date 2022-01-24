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
typedef  int sqlite_uint64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int finalizeTime ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int) ; 
 int prepTime ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int runTime ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*) ; 
 int FUNC15 () ; 
 int FUNC16 (void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int FUNC18(int argc, char **argv){
  void *utf16;
  sqlite3 *db;
  int rc;
  int nSql;
  char *zSql;
  int i, j;
  FILE *in;
  sqlite_uint64 iStart, iElapse;
  sqlite_uint64 iSetup = 0;
  int nStmt = 0;
  int nByte = 0;

  if( argc!=3 ){
    FUNC4(stderr, "Usage: %s FILENAME SQL-SCRIPT\n"
                    "Runs SQL-SCRIPT as UTF16 against a UTF16 database\n",
                    argv[0]);
    FUNC2(1);
  }
  in = FUNC3(argv[2], "r");
  FUNC7(in, 0L, SEEK_END);
  nSql = FUNC8(in);
  zSql = FUNC9( nSql+1 );
  FUNC7(in, 0L, SEEK_SET);
  nSql = FUNC5(zSql, 1, nSql, in);
  zSql[nSql] = 0;

  FUNC11("SQLite version: %d\n", FUNC15());
  FUNC17(argv[1]);
  utf16 = FUNC1(argv[1]);
  iStart = FUNC12();
  rc = FUNC16(utf16, &db);
  iElapse = FUNC12() - iStart;
  iSetup = iElapse;
  FUNC11("sqlite3_open16() returns %d in %llu cycles\n", rc, iElapse);
  FUNC6(utf16);
  for(i=j=0; j<nSql; j++){
    if( zSql[j]==';' ){
      int isComplete;
      char c = zSql[j+1];
      zSql[j+1] = 0;
      isComplete = FUNC14(&zSql[i]);
      zSql[j+1] = c;
      if( isComplete ){
        zSql[j] = 0;
        while( i<j && FUNC0(zSql[i]) ){ i++; }
        if( i<j ){
          nStmt++;
          nByte += j-i;
          FUNC10(db, &zSql[i]);
        }
        zSql[j] = ';';
        i = j+1;
      }
    }
  }
  iStart = FUNC12();
  FUNC13(db);
  iElapse = FUNC12() - iStart;
  iSetup += iElapse;
  FUNC11("sqlite3_close() returns in %llu cycles\n", iElapse);
  FUNC11("\n");
  FUNC11("Statements run:       %15d\n", nStmt);
  FUNC11("Bytes of SQL text:    %15d\n", nByte);
  FUNC11("Total prepare time:   %15llu cycles\n", prepTime);
  FUNC11("Total run time:       %15llu cycles\n", runTime);
  FUNC11("Total finalize time:  %15llu cycles\n", finalizeTime);
  FUNC11("Open/Close time:      %15llu cycles\n", iSetup);
  FUNC11("Total Time:           %15llu cycles\n",
      prepTime + runTime + finalizeTime + iSetup);
  return 0;
}