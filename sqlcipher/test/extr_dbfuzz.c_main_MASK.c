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
typedef  int /*<<< orphan*/  azDb ;
typedef  int /*<<< orphan*/  Str ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SQLITE_CONFIG_HEAP ; 
 int /*<<< orphan*/  SQLITE_CONFIG_LOG ; 
 int /*<<< orphan*/  SQLITE_CONFIG_LOOKASIDE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_OPEN_READWRITE ; 
 scalar_t__ SQLITE_ROW ; 
 unsigned int SQL_OUTPUT ; 
 unsigned int SQL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (char*) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  progressHandler ; 
 char** FUNC13 (char**,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqlLog ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,void*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 () ; 
 int FUNC24 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int FUNC25 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  timeoutHandler ; 

int FUNC29(int argc, char **argv){
  int i;                 /* Loop counter */
  int nDb = 0;           /* Number of databases to fuzz */
  char **azDb = 0;       /* Names of the databases (limit: 20) */
  int verboseFlag = 0;   /* True for extra output */
  int noLookaside = 0;   /* Disable lookaside if true */
  int vdbeLimitFlag = 0; /* Stop after 100,000 VDBE ops */
  int nHeap = 0;         /* True for fixed heap size */
  int iTimeout = 0;      /* Timeout delay in seconds */
  int rc;                /* Result code from SQLite3 API calls */
  sqlite3 *db;           /* The database connection */
  sqlite3_stmt *pStmt;   /* A single SQL statement */
  Str sql;               /* SQL to run */
  unsigned runFlags = 0; /* Flags passed to runSql */

  for(i=1; i<argc; i++){
    char *z = argv[i];
    if( z[0]!='-' ){
      azDb = FUNC13(azDb, sizeof(azDb[0])*(nDb+1));
      if( azDb==0 ) FUNC5("out of memory");
      azDb[nDb++] = z;
      continue;
    }
    z++;
    if( z[0]=='-' ) z++;
    if( FUNC28(z, "help")==0 ){
      FUNC17(argv[0]);
    }else if( FUNC28(z, "limit-mem")==0 ){
      if( i==argc-1 ) FUNC5("missing argument to %s", argv[i]);
      nHeap = FUNC10(argv[++i]);
    }else if( FUNC28(z, "no-lookaside")==0 ){
      noLookaside = 1;
    }else if( FUNC28(z, "timeout")==0 ){
      if( i==argc-1 ) FUNC5("missing argument to %s", argv[i]);
      iTimeout = FUNC10(argv[++i]);
    }else if( FUNC28(z, "trace")==0 ){
      runFlags |= SQL_OUTPUT|SQL_TRACE;
    }else if( FUNC28(z, "limit-vdbe")==0 ){
      vdbeLimitFlag = 1;
    }else if( FUNC28(z, "v")==0 || FUNC28(z, "verbose")==0 ){
      verboseFlag = 1;
      runFlags |= SQL_TRACE;
    }else{
      FUNC5("unknown command-line option: \"%s\"\n", argv[i]);
    }
  }
  if( nDb==0 ){
    FUNC17(argv[0]);
  }
  if( verboseFlag ){
    FUNC21(SQLITE_CONFIG_LOG, sqlLog);
  }
  if( nHeap>0 ){
    void *pHeap = FUNC11( nHeap );
    if( pHeap==0 ) FUNC5("cannot allocate %d-byte heap\n", nHeap);
    rc = FUNC21(SQLITE_CONFIG_HEAP, pHeap, nHeap, 32);
    if( rc ) FUNC5("heap configuration failed: %d\n", rc);
  }
  if( noLookaside ){
    FUNC21(SQLITE_CONFIG_LOOKASIDE, 0, 0);
  }
  FUNC9();
  FUNC7();
  FUNC2(&sql);
#ifdef __unix__
  FUNC18(SIGALRM, timeoutHandler);
#endif
  for(i=0; i<nDb; i++){
    if( verboseFlag && nDb>1 ){
      FUNC12("DATABASE-FILE: %s\n", azDb[i]);
      FUNC6(stdout);
    }
    if( iTimeout ) FUNC16(iTimeout);
    FUNC4("test.db", azDb[i]);
    rc = FUNC24("test.db", &db, SQLITE_OPEN_READWRITE, "inmem");
    if( rc ){
      FUNC12("cannot open test.db for \"%s\"\n", azDb[i]);
      FUNC14();
      continue;
    }
#ifndef SQLITE_OMIT_PROGRESS_CALLBACK
    if( vdbeLimitFlag ){
      FUNC26(db, 100000, progressHandler, &vdbeLimitFlag);
    }
#endif
    rc = FUNC25(db, "SELECT sql FROM autoexec", -1, &pStmt, 0);
    if( rc==SQLITE_OK ){
      while( SQLITE_ROW==FUNC27(pStmt) ){
        FUNC0(&sql, (const char*)FUNC20(pStmt, 0));
        FUNC0(&sql, "\n");
      }
    }
    FUNC22(pStmt);
    FUNC0(&sql, "PRAGMA integrity_check;\n");
    FUNC15(db, FUNC3(&sql), runFlags);
    FUNC19(db);
    FUNC14();
    FUNC1(&sql);
    if( FUNC23()>0 ){
      FUNC8(azDb);
      FUNC14();
      FUNC5("memory leak of %lld bytes", FUNC23());
    }
  }
  FUNC1(&sql);
  FUNC14();
  return 0;
}