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
 int /*<<< orphan*/  SQLITE_ANY ; 
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  halfFunc ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  statusFunc ; 

int FUNC2(
  sqlite3 *db, 
  char **pzErrMsg, 
  const sqlite3_api_routines *pApi
){
  int nErr = 0;
  FUNC0(pApi);
  nErr |= FUNC1(db, "half", 1, SQLITE_ANY, 0, halfFunc, 0, 0);
  nErr |= FUNC1(db, "sqlite3_status", 1, SQLITE_ANY, 0,
                          statusFunc, 0, 0);
  nErr |= FUNC1(db, "sqlite3_status", 2, SQLITE_ANY, 0,
                          statusFunc, 0, 0);
  return nErr ? SQLITE_ERROR : SQLITE_OK;
}