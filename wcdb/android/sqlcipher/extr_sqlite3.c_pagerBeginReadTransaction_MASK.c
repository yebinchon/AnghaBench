#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ eState; int /*<<< orphan*/  fd; int /*<<< orphan*/  pWal; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_OPEN ; 
 scalar_t__ PAGER_READER ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(Pager *pPager){
  int rc;                         /* Return code */
  int changed = 0;                /* True if cache must be reset */

  FUNC1( FUNC2(pPager) );
  FUNC1( pPager->eState==PAGER_OPEN || pPager->eState==PAGER_READER );

  /* sqlite3WalEndReadTransaction() was not called for the previous
  ** transaction in locking_mode=EXCLUSIVE.  So call it now.  If we
  ** are in locking_mode=NORMAL and EndRead() was previously called,
  ** the duplicate call is harmless.
  */
  FUNC6(pPager->pWal);

  rc = FUNC5(pPager->pWal, &changed);
  if( rc!=SQLITE_OK || changed ){
    FUNC3(pPager);
    if( FUNC0(pPager) ) FUNC4(pPager->fd, 0, 0);
  }

  return rc;
}