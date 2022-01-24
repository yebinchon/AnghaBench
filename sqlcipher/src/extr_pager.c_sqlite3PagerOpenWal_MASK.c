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
struct TYPE_6__ {scalar_t__ eState; int /*<<< orphan*/  journalMode; int /*<<< orphan*/  jfd; int /*<<< orphan*/  pWal; int /*<<< orphan*/  tempFile; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  PAGER_JOURNALMODE_WAL ; 
 scalar_t__ PAGER_OPEN ; 
 scalar_t__ PAGER_READER ; 
 int SQLITE_CANTOPEN ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(
  Pager *pPager,                  /* Pager object */
  int *pbOpen                     /* OUT: Set to true if call is a no-op */
){
  int rc = SQLITE_OK;             /* Return code */

  FUNC0( FUNC1(pPager) );
  FUNC0( pPager->eState==PAGER_OPEN   || pbOpen );
  FUNC0( pPager->eState==PAGER_READER || !pbOpen );
  FUNC0( pbOpen==0 || *pbOpen==0 );
  FUNC0( pbOpen!=0 || (!pPager->tempFile && !pPager->pWal) );

  if( !pPager->tempFile && !pPager->pWal ){
    if( !FUNC4(pPager) ) return SQLITE_CANTOPEN;

    /* Close any rollback journal previously open */
    FUNC3(pPager->jfd);

    rc = FUNC2(pPager);
    if( rc==SQLITE_OK ){
      pPager->journalMode = PAGER_JOURNALMODE_WAL;
      pPager->eState = PAGER_OPEN;
    }
  }else{
    *pbOpen = 1;
  }

  return rc;
}