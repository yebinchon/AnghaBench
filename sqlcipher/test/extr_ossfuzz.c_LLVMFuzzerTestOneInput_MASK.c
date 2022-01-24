#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  cx ;
struct TYPE_3__ {char execCnt; int nCb; scalar_t__ mxInterval; int /*<<< orphan*/  db; scalar_t__ iLastCb; scalar_t__ iCutoffTime; } ;
typedef  TYPE_1__ FuzzCtx ;

/* Variables and functions */
 int FUZZ_SHOW_ERRORS ; 
 int FUZZ_SHOW_MAX_DELAY ; 
 int /*<<< orphan*/  SQLITE_DBCONFIG_ENABLE_FKEY ; 
 int /*<<< orphan*/  SQLITE_LIMIT_LENGTH ; 
 int /*<<< orphan*/  SQLITE_LIMIT_VDBE_OP ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_MEMORY ; 
 int SQLITE_OPEN_READWRITE ; 
 int /*<<< orphan*/  block_debug_pragmas ; 
 int /*<<< orphan*/  exec_handler ; 
 int mDebug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  progress_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC9 (char*,int,char const*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 

int FUNC14(const uint8_t* data, size_t size) {
  char *zErrMsg = 0;       /* Error message returned by sqlite_exec() */
  uint8_t uSelector;       /* First byte of input data[] */
  int rc;                  /* Return code from various interfaces */
  char *zSql;              /* Zero-terminated copy of data[] */
  FuzzCtx cx;              /* Fuzzing context */

  FUNC0(&cx, 0, sizeof(cx));
  if( size<3 ) return 0;   /* Early out if unsufficient data */

  /* Extract the selector byte from the beginning of the input.  But only
  ** do this if the second byte is a \n.  If the second byte is not \n,
  ** then use a default selector */
  if( data[1]=='\n' ){
    uSelector = data[0];  data += 2; size -= 2;
  }else{
    uSelector = 0xfd;
  }

  /* Open the database connection.  Only use an in-memory database. */
  if( FUNC7() ) return 0;
  rc = FUNC10("fuzz.db", &cx.db,
           SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE | SQLITE_OPEN_MEMORY, 0);
  if( rc ) return 0;

  /* Invoke the progress handler frequently to check to see if we
  ** are taking too long.  The progress handler will return true
  ** (which will block further processing) if more than 10 seconds have
  ** elapsed since the start of the test.
  */
  cx.iLastCb = FUNC13();
  cx.iCutoffTime = cx.iLastCb + 10000;  /* Now + 10 seconds */
#ifndef SQLITE_OMIT_PROGRESS_CALLBACK
  FUNC11(cx.db, 10, progress_handler, (void*)&cx);
#endif

  /* Set a limit on the maximum size of a prepared statement */
  FUNC8(cx.db, SQLITE_LIMIT_VDBE_OP, 25000);

  /* Set a limit on the maximum length of a string or BLOB.  Without this
  ** limit, fuzzers will invoke randomblob(N) for a large N, and the process
  ** will timeout trying to generate the huge blob */
  FUNC8(cx.db, SQLITE_LIMIT_LENGTH, 50000);

  /* Bit 1 of the selector enables foreign key constraints */
  FUNC4(cx.db, SQLITE_DBCONFIG_ENABLE_FKEY, uSelector&1, &rc);
  uSelector >>= 1;

  /* Do not allow debugging pragma statements that might cause excess output */
  FUNC12(cx.db, block_debug_pragmas, 0);

  /* Remaining bits of the selector determine a limit on the number of
  ** output rows */
  cx.execCnt = uSelector + 1;

  /* Run the SQL.  The sqlite_exec() interface expects a zero-terminated
  ** string, so make a copy. */
  zSql = FUNC9("%.*s", (int)size, data);
#ifndef SQLITE_OMIT_COMPLETE
  FUNC3(zSql);
#endif
  FUNC5(cx.db, zSql, exec_handler, (void*)&cx, &zErrMsg);

  /* Show any errors */
  if( (mDebug & FUZZ_SHOW_ERRORS)!=0 && zErrMsg ){
    FUNC1("Error: %s\n", zErrMsg);
  }

  /* Cleanup and return */
  FUNC6(zErrMsg);
  FUNC6(zSql);
  FUNC5(cx.db, "PRAGMA temp_store_directory=''", 0, 0, 0);
  FUNC2(cx.db);

  if( mDebug & FUZZ_SHOW_MAX_DELAY ){
    FUNC1("Progress callback count....... %d\n", cx.nCb);
    FUNC1("Max time between callbacks.... %d ms\n", (int)cx.mxInterval);
  }
  return 0;
}