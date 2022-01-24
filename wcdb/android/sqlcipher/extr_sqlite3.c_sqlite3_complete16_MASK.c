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
typedef  int /*<<< orphan*/  sqlite3_value ;

/* Variables and functions */
 int SQLITE_NOMEM_BKPT ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_UTF16NATIVE ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 () ; 

int FUNC6(const void *zSql){
  sqlite3_value *pVal;
  char const *zSql8;
  int rc;

#ifndef SQLITE_OMIT_AUTOINIT
  rc = FUNC5();
  if( rc ) return rc;
#endif
  pVal = FUNC1(0);
  FUNC2(pVal, -1, zSql, SQLITE_UTF16NATIVE, SQLITE_STATIC);
  zSql8 = FUNC3(pVal, SQLITE_UTF8);
  if( zSql8 ){
    rc = FUNC4(zSql8);
  }else{
    rc = SQLITE_NOMEM_BKPT;
  }
  FUNC0(pVal);
  return rc & 0xff;
}