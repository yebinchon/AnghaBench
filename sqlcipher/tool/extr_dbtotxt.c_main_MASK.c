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
typedef  int /*<<< orphan*/  bShow ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ FUNC0 (unsigned char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC13 (char const*,char*) ; 

int FUNC14(int argc, char **argv){
  int pgsz = 0;               /* page size */
  long szFile;                /* Size of the input file in bytes */
  FILE *in;                   /* Input file */
  int i, j;                   /* Loop counters */
  int nErr = 0;               /* Number of errors */
  const char *zInputFile = 0; /* Name of the input file */
  const char *zBaseName = 0;  /* Base name of the file */
  int lastPage = 0;           /* Last page number shown */
  int iPage;                  /* Current page number */
  unsigned char aLine[16];    /* A single line of the file */
  unsigned char aHdr[100];    /* File header */
  unsigned char bShow[256];      /* Characters ok to display */
  FUNC10(bShow, '.', sizeof(bShow));
  for(i=' '; i<='~'; i++){
    if( i!='{' && i!='}' && i!='"' && i!='\\' ) bShow[i] = (unsigned char)i;
  }
  for(i=1; i<argc; i++){
    if( argv[i][0]=='-' ){
      const char *z = argv[i];
      z++;
      if( z[0]=='-' ) z++;
      if( FUNC13(z,"pagesize")==0 ){
        i++;
        pgsz = FUNC1(argv[i]);
        if( pgsz<512 || pgsz>65536 || (pgsz&(pgsz-1))!=0 ){
          FUNC5(stderr, "Page size must be a power of two between"
                          " 512 and 65536.\n");
          nErr++;
        }
        continue;
      }
      FUNC5(stderr, "Unknown option: %s\n", argv[i]);
      nErr++;
    }else if( zInputFile ){
      FUNC5(stderr, "Already using a different input file: [%s]\n", argv[i]);
      nErr++;
    }else{
      zInputFile = argv[i];
    }
  }
  if( zInputFile==0 ){
    FUNC5(stderr, "No input file specified.\n");
    nErr++;
  }
  if( nErr ){
    FUNC5(stderr, "Usage: %s [--pagesize N] FILENAME\n", argv[0]);
    FUNC2(1);
  }
  in = FUNC4(zInputFile, "rb");
  if( in==0 ){
    FUNC5(stderr, "Cannot open input file [%s]\n", zInputFile);
    FUNC2(1);
  }
  FUNC8(in, 0, SEEK_END);
  szFile = FUNC9(in);
  FUNC12(in);
  if( szFile<100 ){
    FUNC5(stderr, "File too short. Minimum size is 100 bytes.\n");
    FUNC2(1);
  }
  if( FUNC7(aHdr, 100, 1, in)!=1 ){
    FUNC5(stderr, "Cannot read file header\n");
    FUNC2(1);
  }
  FUNC12(in);
  if( pgsz==0 ){
    pgsz = (aHdr[16]<<8) | aHdr[17];
    if( pgsz==1 ) pgsz = 65536;
    if( pgsz<512 || (pgsz&(pgsz-1))!=0 ){
      FUNC5(stderr, "Invalid page size in header: %d\n", pgsz);
      FUNC2(1);
    }
  }
  zBaseName = zInputFile;
  for(i=0; zInputFile[i]; i++){
    if( zInputFile[i]=='/' && zInputFile[i+1]!=0 ) zBaseName = zInputFile+i+1;
  }
  FUNC11("| size %d pagesize %d filename %s\n",(int)szFile,pgsz,zBaseName);
  for(i=0; i<szFile; i+=16){
    int got = (int)FUNC7(aLine, 1, 16, in);
    if( got!=16 ){
      static int once = 1;
      if( once ){
        FUNC5(stderr, "Could not read input file starting at byte %d\n",
                         i+got);
      }
      FUNC10(aLine+got, 0, 16-got);
    }
    if( FUNC0(aLine) ) continue;
    iPage = i/pgsz + 1;
    if( lastPage!=iPage ){
      FUNC11("| page %d offset %d\n", iPage, (iPage-1)*pgsz);
      lastPage = iPage;
    }
    FUNC11("|  %5d:", i-(iPage-1)*pgsz);
    for(j=0; j<16; j++) FUNC11(" %02x", aLine[j]);
    FUNC11("   ");
    for(j=0; j<16; j++){
      unsigned char c = (unsigned char)aLine[j];
      FUNC6( bShow[c], stdout);
    }
    FUNC6('\n', stdout);
  }
  FUNC3(in);
  FUNC11("| end %s\n", zBaseName);
  return 0;
}