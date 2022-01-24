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
struct TYPE_3__ {int /*<<< orphan*/  syncFlags; int /*<<< orphan*/  fd; int /*<<< orphan*/  noSync; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  MEMDB ; 
 int /*<<< orphan*/  SQLITE_FCNTL_SYNC ; 
 int SQLITE_NOTFOUND ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(Pager *pPager, const char *zMaster){
  int rc = SQLITE_OK;
  void *pArg = (void*)zMaster;
  rc = FUNC1(pPager->fd, SQLITE_FCNTL_SYNC, pArg);
  if( rc==SQLITE_NOTFOUND ) rc = SQLITE_OK;
  if( rc==SQLITE_OK && !pPager->noSync ){
    FUNC0( !MEMDB );
    rc = FUNC2(pPager->fd, pPager->syncFlags);
  }
  return rc;
}