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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUZZ_SHOW_ERRORS ; 
 unsigned int FUZZ_SHOW_MAX_DELAY ; 
 unsigned int FUZZ_SQL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

int FUNC15(int argc, char **argv){
  FILE *in;
  int i;
  int nErr = 0;
  uint8_t *zBuf = 0;
  size_t sz;
  unsigned mDebug = 0;

  for(i=1; i<argc; i++){
    const char *zFilename = argv[i];
    if( zFilename[0]=='-' ){
      if( zFilename[1]=='-' ) zFilename++;
      if( FUNC14(zFilename, "-show-errors")==0 ){
        mDebug |= FUZZ_SHOW_ERRORS;
        FUNC10(mDebug);
      }else
      if( FUNC14(zFilename, "-show-max-delay")==0 ){
        mDebug |= FUZZ_SHOW_MAX_DELAY;
        FUNC10(mDebug);
      }else
      if( FUNC14(zFilename, "-sql-trace")==0 ){
        mDebug |= FUZZ_SQL_TRACE;
        FUNC10(mDebug);
      }else
      {
        FUNC11("unknown option \"%s\"\n", argv[i]);
        FUNC11("should be one of: --show-errors --show-max-delay"
               " --sql-trace\n");
        FUNC1(1);
      }
      continue;
    }
    in = FUNC4(zFilename, "rb");
    if( in==0 ){
      FUNC5(stderr, "cannot open \"%s\"\n", zFilename);
      nErr++;
      continue;
    }
    FUNC8(in, 0, SEEK_END);
    sz = FUNC9(in);
    FUNC13(in);
    zBuf = FUNC12(zBuf, sz);
    if( zBuf==0 ){
      FUNC5(stderr, "cannot malloc() for %d bytes\n", (int)sz);
      FUNC1(1);
    }
    if( FUNC6(zBuf, sz, 1, in)!=1 ){
      FUNC5(stderr, "cannot read %d bytes from \"%s\"\n",
                       (int)sz, zFilename);
      nErr++;
    }else{
      FUNC11("%s... ", zFilename);
      if( mDebug ) FUNC11("\n");
      FUNC3(stdout);
      (void)FUNC0(zBuf, sz);
      if( mDebug ) FUNC11("%s: ", zFilename);
      FUNC11("ok\n");
    }
    FUNC2(in);
  }
  FUNC7(zBuf);
  return nErr;
}