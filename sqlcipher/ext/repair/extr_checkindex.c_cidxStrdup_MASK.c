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
 int SQLITE_OK ; 
 char* FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 

char *FUNC3(int *pRc, const char *zStr){
  char *zRet = 0;
  if( *pRc==SQLITE_OK ){
    int n = (int)FUNC2(zStr);
    zRet = FUNC0(pRc, n+1);
    if( zRet ) FUNC1(zRet, zStr, n+1);
  }
  return zRet;
}