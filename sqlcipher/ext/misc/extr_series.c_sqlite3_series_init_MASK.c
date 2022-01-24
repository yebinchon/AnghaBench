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
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  seriesModule ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 char* FUNC3 (char*) ; 

int FUNC4(
  sqlite3 *db, 
  char **pzErrMsg, 
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  FUNC0(pApi);
#ifndef SQLITE_OMIT_VIRTUALTABLE
  if( FUNC2()<3008012 ){
    *pzErrMsg = FUNC3(
        "generate_series() requires SQLite 3.8.12 or later");
    return SQLITE_ERROR;
  }
  rc = FUNC1(db, "generate_series", &seriesModule, 0);
#endif
  return rc;
}