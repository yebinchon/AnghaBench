#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_api_routines ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {int szOsFile; int /*<<< orphan*/  pAppData; } ;
typedef  int /*<<< orphan*/  MemFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int SQLITE_OK ; 
 int SQLITE_OK_LOAD_PERMANENTLY ; 
 TYPE_1__ mem_vfs ; 
 int FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/  const*) ; 
 int FUNC2 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 

int FUNC5(
  sqlite3 *db, 
  char **pzErrMsg, 
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  FUNC0(pApi);
  mem_vfs.pAppData = FUNC3(0);
  mem_vfs.szOsFile = sizeof(MemFile);
  rc = FUNC4(&mem_vfs, 1);
#ifdef MEMVFS_TEST
  if( rc==SQLITE_OK ){
    rc = sqlite3_auto_extension((void(*)(void))memvfsRegister);
  }
  if( rc==SQLITE_OK ){
    rc = memvfsRegister(db, pzErrMsg, pApi);
  }
#endif
  if( rc==SQLITE_OK ) rc = SQLITE_OK_LOAD_PERMANENTLY;
  return rc;
}