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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*,...) ; 

__attribute__((used)) static void FUNC2(char **pzStr, char *zAppend, int doFree, int *pRc){
  char *zIn = *pzStr;
  if( !zAppend && doFree && *pRc==SQLITE_OK ){
    *pRc = SQLITE_NOMEM;
  }
  if( *pRc!=SQLITE_OK ){
    FUNC0(zIn);
    zIn = 0;
  }else{
    if( zIn ){
      char *zTemp = zIn;
      zIn = FUNC1("%s%s", zIn, zAppend);
      FUNC0(zTemp);
    }else{
      zIn = FUNC1("%s", zAppend);
    }
    if( !zIn ){
      *pRc = SQLITE_NOMEM;
    }
  }
  *pzStr = zIn;
  if( doFree ){
    FUNC0(zAppend);
  }
}