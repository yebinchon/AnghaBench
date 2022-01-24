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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,struct stat*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(
  const char *zFile
){
  char *zCopy = FUNC4("%s", zFile);
  int rc = SQLITE_OK;

  if( zCopy==0 ){
    rc = SQLITE_NOMEM;
  }else{
    int nCopy = (int)FUNC5(zCopy);
    int i = 1;

    while( rc==SQLITE_OK ){
      struct stat sStat;
      int rc2;

      for(; zCopy[i]!='/' && i<nCopy; i++);
      if( i==nCopy ) break;
      zCopy[i] = '\0';

      rc2 = FUNC1(zCopy, &sStat);
      if( rc2!=0 ){
        if( FUNC2(zCopy, 0777) ) rc = SQLITE_ERROR;
      }else{
        if( !FUNC0(sStat.st_mode) ) rc = SQLITE_ERROR;
      }
      zCopy[i] = '/';
      i++;
    }

    FUNC3(zCopy);
  }

  return rc;
}