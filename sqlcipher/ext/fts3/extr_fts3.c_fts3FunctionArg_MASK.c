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
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  Fts3Cursor ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(
  sqlite3_context *pContext,      /* SQL function call context */
  const char *zFunc,              /* Function name */
  sqlite3_value *pVal,            /* argv[0] passed to function */
  Fts3Cursor **ppCsr              /* OUT: Store cursor handle here */
){
  int rc;
  *ppCsr = (Fts3Cursor*)FUNC3(pVal, "fts3cursor");
  if( (*ppCsr)!=0 ){
    rc = SQLITE_OK;
  }else{
    char *zErr = FUNC1("illegal first argument to %s", zFunc);
    FUNC2(pContext, zErr, -1);
    FUNC0(zErr);
    rc = SQLITE_ERROR;
  }
  return rc;
}