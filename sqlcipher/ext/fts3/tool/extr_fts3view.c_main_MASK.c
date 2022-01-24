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
 scalar_t__ SQLITE_ROW ; 
 char** azExtra ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int nExtra ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int FUNC18(int argc, char **argv){
  sqlite3 *db;
  int rc;
  const char *zTab;
  const char *zCmd;

  if( argc<2 ) FUNC17(argv[0]);
  rc = FUNC14(argv[1], &db);
  if( rc ){
    FUNC1(stderr, "Cannot open %s\n", argv[1]);
    FUNC0(1);
  }
  if( argc==2 ){
    sqlite3_stmt *pStmt;
    int cnt = 0;
    pStmt = FUNC3(db, "SELECT b.sql"
                        "  FROM sqlite_master a, sqlite_master b"
                        " WHERE a.name GLOB '*_segdir'"
                        "   AND b.name=substr(a.name,1,length(a.name)-7)"
                        " ORDER BY 1");
    while( FUNC15(pStmt)==SQLITE_ROW ){
      cnt++;
      FUNC4("%s;\n", FUNC12(pStmt, 0));
    }
    FUNC13(pStmt);
    if( cnt==0 ){
      FUNC4("/* No FTS3/4 tables found in database %s */\n", argv[1]);
    }
    return 0;
  }
  if( argc<4 ) FUNC17(argv[0]);
  zTab = argv[2];
  zCmd = argv[3];
  nExtra = argc-4;
  azExtra = argv+4;
  if( FUNC16(zCmd,"big-segments")==0 ){
    FUNC2(db, zTab);
  }else if( FUNC16(zCmd,"doclist")==0 ){
    if( argc<7 ) FUNC17(argv[0]);
    FUNC5(db, zTab);
  }else if( FUNC16(zCmd,"schema")==0 ){
    FUNC6(db, zTab);
  }else if( FUNC16(zCmd,"segdir")==0 ){
    FUNC7(db, zTab);
  }else if( FUNC16(zCmd,"segment")==0 ){
    if( argc<5 ) FUNC17(argv[0]);
    FUNC8(db, zTab);
  }else if( FUNC16(zCmd,"segment-stats")==0 ){
    FUNC9(db, zTab);
  }else if( FUNC16(zCmd,"stat")==0 ){
    FUNC10(db, zTab);
  }else if( FUNC16(zCmd,"vocabulary")==0 ){
    FUNC11(db, zTab);
  }else{
    FUNC17(argv[0]);
  }
  return 0; 
}