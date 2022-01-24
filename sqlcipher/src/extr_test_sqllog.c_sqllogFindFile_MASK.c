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
typedef  int /*<<< orphan*/  zLine ;
typedef  int /*<<< orphan*/  zBuf ;
struct TYPE_2__ {int /*<<< orphan*/  zPrefix; int /*<<< orphan*/  zIdx; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_IOERR ; 
 int SQLLOG_NAMESZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (char) ; 
 TYPE_1__ sqllogglobal ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static char *FUNC11(const char *zFile){
  char *zRet = 0;
  FILE *fd = 0;

  /* Open the index file for reading */
  fd = FUNC4(sqllogglobal.zIdx, "r");
  if( fd==0 ){
    FUNC7(SQLITE_IOERR, "sqllogFindFile(): error in fopen()");
    return 0;
  }

  /* Loop through each entry in the index file. If zFile is not NULL and the
  ** entry is a match, then set zRet to point to the filename of the existing
  ** copy and break out of the loop.  */
  while( FUNC1(fd)==0 ){
    char zLine[SQLLOG_NAMESZ*2+5];
    if( FUNC3(zLine, sizeof(zLine), fd) ){
      int n;
      char *z;

      zLine[sizeof(zLine)-1] = '\0';
      z = zLine;
      while( *z>='0' && *z<='9' ) z++;
      while( *z==' ' ) z++;

      n = FUNC10(z);
      while( n>0 && FUNC9(z[n-1]) ) n--;

      if( n==FUNC10(zFile) && 0==FUNC5(zFile, z, n) ){
        char zBuf[16];
        FUNC6(zBuf, 0, sizeof(zBuf));
        z = zLine;
        while( *z>='0' && *z<='9' ){
          zBuf[z-zLine] = *z;
          z++;
        }
        zRet = FUNC8("%s_%s.db", sqllogglobal.zPrefix, zBuf);
        break;
      }
    }
  }

  if( FUNC2(fd) ){
    FUNC7(SQLITE_IOERR, "sqllogFindFile(): error reading index file");
  }

  FUNC0(fd);
  return zRet;
}