#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int iUsrVersion; } ;
struct TYPE_8__ {scalar_t__ nTransOpen; TYPE_1__ treehdr; } ;
typedef  TYPE_2__ lsm_db ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC3(lsm_db *pDb, unsigned int iUsr){
  int rc = LSM_OK;                /* Return code */
  int bCommit = 0;                /* True to commit before returning */

  if( pDb->nTransOpen==0 ){
    bCommit = 1;
    rc = FUNC0(pDb, 1);
  }

  if( rc==LSM_OK ){
    pDb->treehdr.iUsrVersion = iUsr;
  }

  /* If a transaction was opened at the start of this function, commit it. 
  ** Or, if an error has occurred, roll it back.  */
  if( bCommit ){
    if( rc==LSM_OK ){
      rc = FUNC1(pDb, 0);
    }else{
      FUNC2(pDb, 0);
    }
  }

  return rc;
}