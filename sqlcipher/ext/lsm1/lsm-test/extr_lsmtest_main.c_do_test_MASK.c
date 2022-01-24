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
 int /*<<< orphan*/  FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char const*,int*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char const*,int*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char const*,int*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char const*,int*) ; 

int FUNC13(int nArg, char **azArg){
  int j;
  int rc;
  int nFail = 0;
  const char *zPattern = 0;

  if( nArg>1 ){
    FUNC3("Usage: test ?PATTERN?\n");
    return 1;
  }
  if( nArg==1 ){
    zPattern = azArg[0];
  }

  for(j=0; FUNC2(j); j++){
    rc = 0;

    FUNC5(FUNC2(j), zPattern, &rc);
    FUNC6(FUNC2(j), zPattern, &rc);
    FUNC7(FUNC2(j), zPattern, &rc);
    FUNC8(FUNC2(j), zPattern, &rc);
    FUNC12(FUNC2(j), zPattern, &rc);
    FUNC9(FUNC2(j), zPattern, &rc);
    FUNC10(FUNC2(j), zPattern, &rc);

    if( rc ) nFail++;
  }

  rc = 0;
  FUNC11(zPattern, &rc);
  if( rc ) nFail++;

  rc = 0;
  FUNC4(zPattern, &rc);
  if( rc ) nFail++;

  rc = 0;
  FUNC0(zPattern, &rc);
  if( rc ) nFail++;

  rc = 0;
  FUNC1(zPattern, &rc);
  if( rc ) nFail++;

  return (nFail!=0);
}