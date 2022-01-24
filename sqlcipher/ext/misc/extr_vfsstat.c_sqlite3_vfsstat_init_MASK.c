#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_api_routines ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  VStatFile ;
struct TYPE_6__ {scalar_t__ szOsFile; } ;
struct TYPE_5__ {scalar_t__ szOsFile; } ;
struct TYPE_4__ {TYPE_2__ base; TYPE_3__* pVfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int SQLITE_OK ; 
 int SQLITE_OK_LOAD_PERMANENTLY ; 
 int FUNC1 (int (*) (int /*<<< orphan*/ *,char**,int /*<<< orphan*/  const*)) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/  const*) ; 
 TYPE_1__ vstat_vfs ; 

int FUNC5(
  sqlite3 *db, 
  char **pzErrMsg, 
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  FUNC0(pApi);
  vstat_vfs.pVfs = FUNC2(0);
  vstat_vfs.base.szOsFile = sizeof(VStatFile) + vstat_vfs.pVfs->szOsFile;
  rc = FUNC3(&vstat_vfs.base, 1);
  if( rc==SQLITE_OK ){
    rc = FUNC4(db, pzErrMsg, pApi);
    if( rc==SQLITE_OK ){
      rc = FUNC1(vstatRegister);
    }
  }
  if( rc==SQLITE_OK ) rc = SQLITE_OK_LOAD_PERMANENTLY;
  return rc;
}