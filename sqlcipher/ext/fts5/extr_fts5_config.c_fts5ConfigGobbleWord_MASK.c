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
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static const char *FUNC8(
  int *pRc,                       /* IN/OUT: Error code */
  const char *zIn,                /* Buffer to gobble string/bareword from */
  char **pzOut,                   /* OUT: malloc'd buffer containing str/bw */
  int *pbQuoted                   /* OUT: Set to true if dequoting required */
){
  const char *zRet = 0;

  sqlite3_int64 nIn = FUNC7(zIn);
  char *zOut = FUNC6(nIn+1);

  FUNC0( *pRc==SQLITE_OK );
  *pbQuoted = 0;
  *pzOut = 0;

  if( zOut==0 ){
    *pRc = SQLITE_NOMEM;
  }else{
    FUNC4(zOut, zIn, (size_t)(nIn+1));
    if( FUNC3(zOut[0]) ){
      int ii = FUNC2(zOut);
      zRet = &zIn[ii];
      *pbQuoted = 1;
    }else{
      zRet = FUNC1(zIn);
      if( zRet ){
        zOut[zRet-zIn] = '\0';
      }
    }
  }

  if( zRet==0 ){
    FUNC5(zOut);
  }else{
    *pzOut = zOut;
  }

  return zRet;
}