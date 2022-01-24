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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,int,int,int,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(int argc, char **argv){
  char *zDb;
  int i, rc;
  int nCount = 1000;
  int sz = 10000;
  int iVariance = 0;
  int pgsz = 4096;
  sqlite3 *db;
  char *zSql;
  char *zErrMsg = 0;

  FUNC0( FUNC9(argv[1],"init")==0 );
  FUNC0( argc>=3 );
  zDb = argv[2];
  for(i=3; i<argc; i++){
    char *z = argv[i];
    if( z[0]!='-' ) FUNC1("unknown argument: \"%s\"", z);
    if( z[1]=='-' ) z++;
    if( FUNC9(z, "-count")==0 ){
      if( i==argc-1 ) FUNC1("missing argument on \"%s\"", argv[i]);
      nCount = FUNC2(argv[++i]);
      if( nCount<1 ) FUNC1("the --count must be positive");
      continue;
    }
    if( FUNC9(z, "-size")==0 ){
      if( i==argc-1 ) FUNC1("missing argument on \"%s\"", argv[i]);
      sz = FUNC2(argv[++i]);
      if( sz<1 ) FUNC1("the --size must be positive");
      continue;
    }
    if( FUNC9(z, "-variance")==0 ){
      if( i==argc-1 ) FUNC1("missing argument on \"%s\"", argv[i]);
      iVariance = FUNC2(argv[++i]);
      continue;
    }
    if( FUNC9(z, "-pagesize")==0 ){
      if( i==argc-1 ) FUNC1("missing argument on \"%s\"", argv[i]);
      pgsz = FUNC2(argv[++i]);
      if( pgsz<512 || pgsz>65536 || ((pgsz-1)&pgsz)!=0 ){
        FUNC1("the --pagesize must be power of 2 between 512 and 65536");
      }
      continue;
    }
    FUNC1("unknown option: \"%s\"", argv[i]);
  }
  rc = FUNC8(zDb, &db);
  if( rc ){
    FUNC1("cannot open database \"%s\": %s", zDb, FUNC4(db));
  }
  zSql = FUNC7(
    "DROP TABLE IF EXISTS kv;\n"
    "PRAGMA page_size=%d;\n"
    "VACUUM;\n"
    "BEGIN;\n"
    "CREATE TABLE kv(k INTEGER PRIMARY KEY, v BLOB);\n"
    "WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<%d)"
    " INSERT INTO kv(k,v) SELECT x, randomblob(%d+(random()%%(%d))) FROM c;\n"
    "COMMIT;\n",
    pgsz, nCount, sz, iVariance+1
  );
  rc = FUNC5(db, zSql, 0, 0, &zErrMsg);
  if( rc ) FUNC1("database create failed: %s", zErrMsg);
  FUNC6(zSql);
  FUNC3(db);
  return 0;
}