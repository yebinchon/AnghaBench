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
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const char *zStr, int *pRc){
  char *zRet = 0;

  FUNC0( *pRc==SQLITE_OK );
  if( zStr ){
    size_t nCopy = FUNC3(zStr) + 1;
    zRet = (char*)FUNC2(nCopy);
    if( zRet ){
      FUNC1(zRet, zStr, nCopy);
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }

  return zRet;
}