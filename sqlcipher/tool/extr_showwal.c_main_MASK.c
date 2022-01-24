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
struct stat {int st_size; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  Cksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct stat*) ; 
 unsigned char* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int mxFrame ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int pagesize ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int FUNC16 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 

int FUNC18(int argc, char **argv){
  struct stat sbuf;
  unsigned char zPgSz[4];
  if( argc<2 ){
    FUNC4(stderr,"Usage: %s FILENAME ?PAGE? ...\n", argv[0]);
    FUNC3(1);
  }
  fd = FUNC9(argv[1], O_RDONLY);
  if( fd<0 ){
    FUNC4(stderr,"%s: can't open %s\n", argv[0], argv[1]);
    FUNC3(1);
  }
  zPgSz[0] = 0;
  zPgSz[1] = 0;
  FUNC8(fd, 8, SEEK_SET);
  FUNC14(fd, zPgSz, 4);
  pagesize = zPgSz[1]*65536 + zPgSz[2]*256 + zPgSz[3];
  if( pagesize==0 ) pagesize = 1024;
  FUNC13("Pagesize: %d\n", pagesize);
  FUNC6(fd, &sbuf);
  if( sbuf.st_size<32 ){
    FUNC13("file too small to be a WAL\n");
    return 0;
  }
  mxFrame = (sbuf.st_size - 32)/(pagesize + 24);
  FUNC13("Available pages: 1..%d\n", mxFrame);
  if( argc==2 ){
    int i;
    Cksum x;
    FUNC12(&x);
    for(i=1; i<=mxFrame; i++){
      FUNC11(i, &x);
    }
  }else{
    int i;
    for(i=2; i<argc; i++){
      int iStart, iEnd;
      char *zLeft;
      if( FUNC15(argv[i], "header")==0 ){
        FUNC12(0);
        continue;
      }
      if( !FUNC0(argv[i][0]) ){
        FUNC4(stderr, "%s: unknown option: [%s]\n", argv[0], argv[i]);
        continue;
      }
      iStart = FUNC16(argv[i], &zLeft, 0);
      if( zLeft && FUNC15(zLeft,"..end")==0 ){
        iEnd = mxFrame;
      }else if( zLeft && zLeft[0]=='.' && zLeft[1]=='.' ){
        iEnd = FUNC16(&zLeft[2], 0, 0);
      }else if( zLeft && zLeft[0]=='b' ){
        int ofst, nByte, hdrSize;
        unsigned char *a;
        if( iStart==1 ){
          hdrSize = 100;
          ofst = hdrSize = 100;
          nByte = pagesize-100;
        }else{
          hdrSize = 0;
          ofst = (iStart-1)*pagesize;
          nByte = pagesize;
        }
        ofst = 32 + hdrSize + (iStart-1)*(pagesize+24) + 24;
        a = FUNC7(ofst, nByte);
        FUNC2(a, iStart, hdrSize, zLeft+1);
        FUNC5(a);
        continue;
#if !defined(_MSC_VER)
      }else if( zLeft && FUNC15(zLeft,"truncate")==0 ){
        /* Frame number followed by "truncate" truncates the WAL file
        ** after that frame */
        off_t newSize = 32 + iStart*(pagesize+24);
        FUNC17(argv[1], newSize);
        continue;
#endif
      }else{
        iEnd = iStart;
      }
      if( iStart<1 || iEnd<iStart || iEnd>mxFrame ){
        FUNC4(stderr,
          "Page argument should be LOWER?..UPPER?.  Range 1 to %d\n",
          mxFrame);
        FUNC3(1);
      }
      while( iStart<=iEnd ){
        FUNC10(iStart);
        iStart++;
      }
    }
  }
  FUNC1(fd);
  return 0;
}