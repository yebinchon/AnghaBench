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
 int /*<<< orphan*/  amatchModule ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(
  sqlite3 *db, 
  char **pzErrMsg, 
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  FUNC0(pApi);
  (void)pzErrMsg;  /* Not used */
#ifndef SQLITE_OMIT_VIRTUALTABLE
  rc = FUNC1(db, "approximate_match", &amatchModule, 0);
#endif /* SQLITE_OMIT_VIRTUALTABLE */
  return rc;
}