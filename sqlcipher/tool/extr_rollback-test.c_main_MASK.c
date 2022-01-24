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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* zReply ; 

int FUNC11(int argc, char **argv){
  sqlite3 *db;
  int i;

  if( argc<3 ) FUNC10(argv[0]);
  if( FUNC8(argv[1], "new")==0 ){
    db = FUNC3(argv[argc-1]);
    for(i=2; i<argc-1; i++){
      if( FUNC8(argv[i],"-utf8")==0 ){
        FUNC5(db, "PRAGMA encoding=UTF8");
      }else if( FUNC8(argv[i], "-utf16le")==0 ){
        FUNC5(db, "PRAGMA encoding=UTF16LE");
      }else if( FUNC8(argv[i], "-utf16be")==0 ){
        FUNC5(db, "PRAGMA encoding=UTF16BE");
      }else if( FUNC9(argv[i], "-pagesize=", 10)==0 ){
        int szPg = FUNC0(&argv[i][10]);
        char zBuf[100];
        FUNC6(zBuf, "PRAGMA pagesize=%d", szPg);
        FUNC5(db, zBuf);
      }else{
        FUNC2(stderr, "unknown option %s\n", argv[i]);
        FUNC10(argv[0]);
      }
    }
    FUNC5(db, 
       "BEGIN;"
       "CREATE TABLE t1(x INTEGER PRIMARY KEY, y);"
       "INSERT INTO t1(y) VALUES('abcdefghijklmnopqrstuvwxyz');"
       "INSERT INTO t1(y) VALUES('abcdefghijklmnopqrstuvwxyz');"
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 4 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 8 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 16 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 32 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 64 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 128 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 256 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 512 */
       "INSERT INTO t1(y) SELECT y FROM t1;" /* 1024 */
       "UPDATE t1 SET y=(y || x);"
       "CREATE INDEX t1y ON t1(y);"
       "COMMIT;"
    );
    FUNC7(db);
  }else if( FUNC8(argv[1], "check")==0 ){
    db = FUNC3(argv[argc-1]);
    FUNC5(db, "PRAGMA integrity_check");
    if( FUNC8(zReply, "ok")!=0 ){
      FUNC2(stderr, "Integrity check: %s\n", zReply);
      FUNC1(1);
    }
    FUNC5(db, 
      "SELECT count(*) FROM t1 WHERE y<>('abcdefghijklmnopqrstuvwxyz' || x)"
    );
    if( FUNC8(zReply, "0")!=0 ){
      FUNC2(stderr, "Wrong content\n");
      FUNC1(1);
    }
    FUNC4("Ok\n");
  }else if( FUNC8(argv[1], "crash")==0 ){
    db = FUNC3(argv[argc-1]);
    for(i=2; i<argc-1; i++){
      if( FUNC8(argv[i],"-wal")==0 ){
        FUNC5(db, "PRAGMA journal_mode=WAL");
      }else if( FUNC8(argv[i], "-rollback")==0 ){
        FUNC5(db, "PRAGMA journal_mode=DELETE");
      }else{
        FUNC2(stderr, "unknown option %s\n", argv[i]);
        FUNC10(argv[0]);
      }
    }
    FUNC5(db,
      "PRAGMA cache_size=10;"
      "BEGIN;"
      "UPDATE t1 SET y=(y || -x)"
    );
    FUNC1(0);
  }else{
    FUNC10(argv[0]);
  }
  return 0;
}