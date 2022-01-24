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
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_DIR ; 
 int PATH_TREE ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 size_t FUNC5 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (char*,char*) ; 
 int FUNC17 (char*,int /*<<< orphan*/ **) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,char*,int,...) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC21 (char const*,char*) ; 
 scalar_t__ FUNC22 (char*) ; 

__attribute__((used)) static int FUNC23(int argc, char **argv){
  char *zDb;
  char *zDir;
  sqlite3 *db;
  sqlite3_stmt *pStmt;
  int rc;
  int ePathType;
  int nFN;
  char *zFN;
  char *zTail;
  size_t nWrote;
  int i;

  FUNC0( FUNC21(argv[1],"export")==0 );
  FUNC0( argc>=3 );
  if( argc<4 ) FUNC1("Usage: kvtest export DATABASE DIRECTORY [OPTIONS]");
  zDb = argv[2];
  zDir = argv[3];
  FUNC6(zDir);
  for(i=4; i<argc; i++){
    const char *z = argv[i];
    if( z[0]=='-' && z[1]=='-' ) z++;
    if( FUNC21(z,"-tree")==0 ){
      zFN = FUNC16("%s/00", zDir);
      FUNC6(zFN);
      FUNC15(zFN);
      continue;
    }
    FUNC1("unknown argument: \"%s\"\n", argv[i]);
  }
  ePathType = FUNC7(zDir);
  if( ePathType!=PATH_DIR && ePathType!=PATH_TREE ){
    FUNC1("object \"%s\" is not a directory", zDir);
  }
  rc = FUNC17(zDb, &db);
  if( rc ){
    FUNC1("cannot open database \"%s\": %s", zDb, FUNC13(db));
  }
  rc = FUNC18(db, "SELECT k, v FROM kv ORDER BY k", -1, &pStmt, 0);
  if( rc ){
    FUNC1("prepare_v2 failed: %s\n", FUNC13(db));
  }
  nFN = (int)FUNC22(zDir);
  zFN = FUNC16("%s/00/00/00.extra---------------------", zDir);
  if( zFN==0 ){
    FUNC1("malloc failed\n");
  }
  zTail = zFN + nFN + 1;
  while( FUNC20(pStmt)==SQLITE_ROW ){
    int iKey = FUNC12(pStmt, 0);
    sqlite3_int64 nData = FUNC11(pStmt, 1);
    const void *pData = FUNC10(pStmt, 1);
    FILE *out;
    if( ePathType==PATH_DIR ){
      FUNC19(20, zTail, "%06d", iKey);
    }else{
      FUNC19(20, zTail, "%02d", iKey/10000);
      FUNC6(zFN);
      FUNC19(20, zTail, "%02d/%02d", iKey/10000, (iKey/100)%100);
      FUNC6(zFN);
      FUNC19(20, zTail, "%02d/%02d/%02d",
                       iKey/10000, (iKey/100)%100, iKey%100);
    }
    out = FUNC4(zFN, "wb");      
    nWrote = FUNC5(pData, 1, (size_t)nData, out);
    FUNC2(out);
    FUNC8("\r%s   ", zTail); FUNC3(stdout);
    if( nWrote!=(size_t)nData ){
      FUNC1("Wrote only %d of %d bytes to %s\n",
                  (int)nWrote, nData, zFN);
    }
  }
  FUNC14(pStmt);
  FUNC9(db);
  FUNC15(zFN);
  FUNC8("\n");
  return 0;
}