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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  echo_vtab ;
typedef  int /*<<< orphan*/  echo_cursor ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  echo_cursor *pCur;
  if( FUNC0((echo_vtab *)pVTab, "xOpen") ){
    return SQLITE_ERROR;
  }
  pCur = FUNC1(sizeof(echo_cursor));
  *ppCursor = (sqlite3_vtab_cursor *)pCur;
  return (pCur ? SQLITE_OK : SQLITE_NOMEM);
}