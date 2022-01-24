#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_2__ {int bRaw; unsigned char pagesize; int mxPage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 unsigned char* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int FUNC17 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 

int FUNC19(int argc, char **argv){
  sqlite3_int64 szFile;
  unsigned char *zPgSz;
  const char *zPrg = argv[0];     /* Name of this executable */
  char **azArg = argv;
  int nArg = argc;

  /* Check for the "--uri" or "-uri" switch. */
  if( nArg>1 ){
    if( FUNC15("-raw", azArg[1])==0 
     || FUNC15("--raw", azArg[1])==0
    ){
      g.bRaw = 1;
      azArg++;
      nArg--;
    }
  }

  if( nArg<2 ){
    FUNC18(zPrg);
    FUNC3(1);
  }

  FUNC6(zPrg, azArg[1]);
  szFile = FUNC5();

  zPgSz = FUNC7(16, 2);
  g.pagesize = zPgSz[0]*256 + zPgSz[1]*65536;
  if( g.pagesize==0 ) g.pagesize = 1024;
  FUNC14(zPgSz);

  FUNC12("Pagesize: %d\n", g.pagesize);
  g.mxPage = (int)((szFile+g.pagesize-1)/g.pagesize);

  FUNC12("Available pages: 1..%d\n", g.mxPage);
  if( nArg==2 ){
    int i;
    for(i=1; i<=g.mxPage; i++) FUNC11(i);
  }else{
    int i;
    for(i=2; i<nArg; i++){
      int iStart, iEnd;
      char *zLeft;
      if( FUNC16(azArg[i], "dbheader")==0 ){
        FUNC10();
        continue;
      }
      if( FUNC16(azArg[i], "pgidx")==0 ){
        FUNC9(zPrg, azArg[1]);
        continue;
      }
      if( FUNC16(azArg[i], "ptrmap")==0 ){
        FUNC13(azArg[1]);
        continue;
      }
      if( FUNC16(azArg[i], "help")==0 ){
        FUNC18(zPrg);
        continue;
      }
      if( !FUNC0(azArg[i][0]) ){
        FUNC8(stderr, "%s: unknown option: [%s]\n", zPrg, azArg[i]);
        continue;
      }
      iStart = FUNC17(azArg[i], &zLeft, 0);
      if( zLeft && FUNC16(zLeft,"..end")==0 ){
        iEnd = g.mxPage;
      }else if( zLeft && zLeft[0]=='.' && zLeft[1]=='.' ){
        iEnd = FUNC17(&zLeft[2], 0, 0);
      }else if( zLeft && zLeft[0]=='b' ){
        int ofst, nByte, hdrSize;
        unsigned char *a;
        if( iStart==1 ){
          ofst = hdrSize = 100;
          nByte = g.pagesize-100;
        }else{
          hdrSize = 0;
          ofst = (iStart-1)*g.pagesize;
          nByte = g.pagesize;
        }
        a = FUNC7(ofst, nByte);
        FUNC1(a, iStart, hdrSize, &zLeft[1]);
        FUNC14(a);
        continue;
      }else if( zLeft && zLeft[0]=='t' ){
        int detail = 0;
        int recursive = 0;
        int j;
        for(j=1; zLeft[j]; j++){
          if( zLeft[j]=='r' ) recursive = 1;
          if( zLeft[j]=='d' ) detail = 1;
        }
        FUNC2(iStart, detail, recursive);
        continue;
      }else{
        iEnd = iStart;
      }
      if( iStart<1 || iEnd<iStart || iEnd>g.mxPage ){
        FUNC8(stderr,
          "Page argument should be LOWER?..UPPER?.  Range 1 to %d\n",
          g.mxPage);
        FUNC3(1);
      }
      while( iStart<=iEnd ){
        FUNC11(iStart);
        iStart++;
      }
    }
  }
  FUNC4();
  return 0;
}