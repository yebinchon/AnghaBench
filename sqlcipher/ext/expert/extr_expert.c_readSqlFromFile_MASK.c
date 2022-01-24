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
typedef  int /*<<< orphan*/  sqlite3expert ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char*,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (long) ; 
 char* FUNC9 (char*,char const*) ; 

__attribute__((used)) static int FUNC10(sqlite3expert *p, const char *zFile, char **pzErr){
  FILE *in = FUNC1(zFile, "rb");
  long nIn;
  size_t nRead;
  char *pBuf;
  int rc;
  if( in==0 ){
    *pzErr = FUNC9("failed to open file %s\n", zFile);
    return SQLITE_ERROR;
  }
  FUNC3(in, 0, SEEK_END);
  nIn = FUNC4(in);
  FUNC5(in);
  pBuf = FUNC8( nIn+1 );
  nRead = FUNC2(pBuf, nIn, 1, in);
  FUNC0(in);
  if( nRead!=1 ){
    FUNC7(pBuf);
    *pzErr = FUNC9("failed to read file %s\n", zFile);
    return SQLITE_ERROR;
  }
  pBuf[nIn] = 0;
  rc = FUNC6(p, pBuf, pzErr);
  FUNC7(pBuf);
  return rc;
}