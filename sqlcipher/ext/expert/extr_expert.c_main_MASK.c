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
typedef  int /*<<< orphan*/  sqlite3expert ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  EXPERT_CONFIG_SAMPLE ; 
 int /*<<< orphan*/  EXPERT_REPORT_CANDIDATES ; 
 int /*<<< orphan*/  EXPERT_REPORT_INDEXES ; 
 int /*<<< orphan*/  EXPERT_REPORT_PLAN ; 
 int /*<<< orphan*/  EXPERT_REPORT_SQL ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char**) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char**) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char**) ; 

int FUNC18(int argc, char **argv){
  const char *zDb;
  int rc = 0;
  char *zErr = 0;
  int i;
  int iVerbose = 1;               /* -verbose option */

  sqlite3 *db = 0;
  sqlite3expert *p = 0;

  if( argc<2 ) FUNC17(argv);
  zDb = argv[argc-1];
  if( zDb[0]=='-' ) FUNC17(argv);
  rc = FUNC14(zDb, &db);
  if( rc!=SQLITE_OK ){
    FUNC1(stderr, "Cannot open db file: %s - %s\n", zDb, FUNC5(db));
    FUNC0(-2);
  }

  p = FUNC10(db, &zErr);
  if( p==0 ){
    FUNC1(stderr, "Cannot run analysis: %s\n", zErr);
    rc = 1;
  }else{
    for(i=1; i<(argc-1); i++){
      char *zArg = argv[i];
      int nArg;
      if( zArg[0]=='-' && zArg[1]=='-' && zArg[2]!=0 ) zArg++;
      nArg = (int)FUNC16(zArg);
      if( nArg>=2 && 0==FUNC15(zArg, "-file", nArg) ){
        if( ++i==(argc-1) ) FUNC3("-file");
        rc = FUNC4(p, argv[i], &zErr);
      }

      else if( nArg>=3 && 0==FUNC15(zArg, "-sql", nArg) ){
        if( ++i==(argc-1) ) FUNC3("-sql");
        rc = FUNC12(p, argv[i], &zErr);
      }

      else if( nArg>=3 && 0==FUNC15(zArg, "-sample", nArg) ){
        int iSample;
        if( ++i==(argc-1) ) FUNC3("-sample");
        iSample = FUNC2(argv[i]);
        FUNC7(p, EXPERT_CONFIG_SAMPLE, iSample);
      }

      else if( nArg>=2 && 0==FUNC15(zArg, "-verbose", nArg) ){
        if( ++i==(argc-1) ) FUNC3("-verbose");
        iVerbose = FUNC2(argv[i]);
      }

      else{
        FUNC17(argv);
      }
    }
  }

  if( rc==SQLITE_OK ){
    rc = FUNC6(p, &zErr);
  }

  if( rc==SQLITE_OK ){
    int nQuery = FUNC8(p);
    if( iVerbose>0 ){
      const char *zCand = FUNC11(p,0,EXPERT_REPORT_CANDIDATES);
      FUNC1(stdout, "-- Candidates -------------------------------\n");
      FUNC1(stdout, "%s\n", zCand);
    }
    for(i=0; i<nQuery; i++){
      const char *zSql = FUNC11(p, i, EXPERT_REPORT_SQL);
      const char *zIdx = FUNC11(p, i, EXPERT_REPORT_INDEXES);
      const char *zEQP = FUNC11(p, i, EXPERT_REPORT_PLAN);
      if( zIdx==0 ) zIdx = "(no new indexes)\n";
      if( iVerbose>0 ){
        FUNC1(stdout, "-- Query %d ----------------------------------\n",i+1);
        FUNC1(stdout, "%s\n\n", zSql);
      }
      FUNC1(stdout, "%s\n%s\n", zIdx, zEQP);
    }
  }else{
    FUNC1(stderr, "Error: %s\n", zErr ? zErr : "?");
  }

  FUNC9(p);
  FUNC13(zErr);
  return rc;
}