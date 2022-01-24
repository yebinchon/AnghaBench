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
typedef  int /*<<< orphan*/  sqlite3_api_routines ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lsModeFunc ; 
 int /*<<< orphan*/  readfileFunc ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  writefileFunc ; 

int FUNC3(
  sqlite3 *db, 
  char **pzErrMsg, 
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  FUNC0(pApi);
  (void)pzErrMsg;  /* Unused parameter */
  rc = FUNC2(db, "readfile", 1, SQLITE_UTF8, 0,
                               readfileFunc, 0, 0);
  if( rc==SQLITE_OK ){
    rc = FUNC2(db, "writefile", -1, SQLITE_UTF8, 0,
                                 writefileFunc, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = FUNC2(db, "lsmode", 1, SQLITE_UTF8, 0,
                                 lsModeFunc, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = FUNC1(db);
  }
  return rc;
}