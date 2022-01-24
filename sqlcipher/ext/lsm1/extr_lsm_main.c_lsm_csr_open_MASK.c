#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pShmhdr; scalar_t__ iReader; int /*<<< orphan*/  bReadonly; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  lsm_cursor ;
typedef  int /*<<< orphan*/  MultiCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ **) ; 

int FUNC7(lsm_db *pDb, lsm_cursor **ppCsr){
  int rc = LSM_OK;                /* Return code */
  MultiCursor *pCsr = 0;          /* New cursor object */

  /* Open a read transaction if one is not already open. */
  FUNC1(pDb);

  if( pDb->pShmhdr==0 ){
    FUNC0( pDb->bReadonly );
    rc = FUNC4(pDb);
  }else if( pDb->iReader<0 ){
    rc = FUNC3(pDb);
  }

  /* Allocate the multi-cursor. */
  if( rc==LSM_OK ){
    rc = FUNC6(pDb, &pCsr);
  }

  /* If an error has occured, set the output to NULL and delete any partially
  ** allocated cursor. If this means there are no open cursors, release the
  ** client snapshot.  */
  if( rc!=LSM_OK ){
    FUNC5(pCsr, 0);
    FUNC2(pDb);
  }

  FUNC1(pDb);
  *ppCsr = (lsm_cursor *)pCsr;
  return rc;
}