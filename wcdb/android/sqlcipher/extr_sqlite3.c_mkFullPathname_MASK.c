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

/* Variables and functions */
 int SQLITE_CANTOPEN_BKPT ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,char const*) ; 
 int FUNC3 (int,char*,char const*) ; 

__attribute__((used)) static int FUNC4(
  const char *zPath,              /* Input path */
  char *zOut,                     /* Output buffer */
  int nOut                        /* Allocated size of buffer zOut */
){
  int nPath = FUNC1(zPath);
  int iOff = 0;
  if( zPath[0]!='/' ){
    if( FUNC0(zOut, nOut-2)==0 ){
      return FUNC3(SQLITE_CANTOPEN_BKPT, "getcwd", zPath);
    }
    iOff = FUNC1(zOut);
    zOut[iOff++] = '/';
  }
  if( (iOff+nPath+1)>nOut ){
    /* SQLite assumes that xFullPathname() nul-terminates the output buffer
    ** even if it returns an error.  */
    zOut[iOff] = '\0';
    return SQLITE_CANTOPEN_BKPT;
  }
  FUNC2(nOut-iOff, &zOut[iOff], "%s", zPath);
  return SQLITE_OK;
}