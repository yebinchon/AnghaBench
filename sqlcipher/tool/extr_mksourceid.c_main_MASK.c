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
typedef  int /*<<< orphan*/  zLine ;
typedef  int /*<<< orphan*/  SHA3Context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int FUNC12 (char*,char*) ; 
 int FUNC13 (char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int FUNC18(int argc, char **argv){
  const char *zManifest = 0;
  int i;
  int bVerbose = 0;
  FILE *in;
  int allValid = 1;
  int rc;
  SHA3Context ctx;
  char zDate[50];
  char zHash[100];
  char zLine[20000];

  for(i=1; i<argc; i++){
    const char *z = argv[i];
    if( z[0]=='-' ){
      if( z[1]=='-' ) z++;
      if( FUNC14(z, "-v")==0 ){
        bVerbose = 1;
      }else
      {
        FUNC8(stderr, "unknown option \"%s\"", argv[i]);
        FUNC4(1);
      }
    }else if( zManifest!=0 ){
      FUNC17(argv[0]);
    }else{
      zManifest = z;
    }
  }
  if( zManifest==0 ) FUNC17(argv[0]);
  zDate[0] = 0;
  in = FUNC7(zManifest, "rb");
  if( in==0 ){
    FUNC8(stderr, "cannot open \"%s\" for reading\n", zManifest);
    FUNC4(1);
  }
  FUNC2(&ctx, 256);
  while( FUNC6(zLine, sizeof(zLine), in) ){
    if( FUNC16(zLine,"# Remove this line", 18)!=0 ){
      FUNC3(&ctx, (unsigned char*)zLine, (unsigned)FUNC15(zLine));
    }
    if( FUNC16(zLine, "D 20", 4)==0 ){
      FUNC9(zDate, &zLine[2], 10);
      zDate[10] = ' ';
      FUNC9(&zDate[11], &zLine[13], 8);
      zDate[19] = 0;
      continue;
    }
    if( FUNC16(zLine, "F ", 2)==0 ){
      char *zFilename = &zLine[2];
      char *zMHash = FUNC10(zFilename);
      FUNC10(zMHash);
      if( FUNC15(zMHash)==40 ){
        rc = FUNC12(zFilename, zHash);
      }else{
        rc = FUNC13(zFilename, 256, zHash);
      }
      if( rc ){
        allValid = 0;
        if( bVerbose ){
          FUNC11("hash failed: %s\n", zFilename);
        }
      }else if( FUNC14(zHash, zMHash)!=0 ){
        allValid = 0;
        if( bVerbose ){
          FUNC11("wrong hash: %s\n", zFilename);
          FUNC11("... expected: %s\n", zMHash);
          FUNC11("... got:      %s\n", zHash);
        }
      }
    }
  }
  FUNC5(in);
  FUNC0(FUNC1(&ctx), zHash, 256/8);
  if( !allValid ){
    FUNC11("%s %.60salt1\n", zDate, zHash);
  }else{
    FUNC11("%s %s\n", zDate, zHash);
  }
  return 0;
}