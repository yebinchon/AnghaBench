#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  pFS; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int i64 ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (TYPE_1__*,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(lsm_db *pDb, int *pnKB){
  int rc;                         /* Return code */
  u32 nWrite = 0;                 /* Number of pages checkpointed */

  /* Attempt the checkpoint. If successful, nWrite is set to the number of
  ** pages written between this and the previous checkpoint.  */
  rc = FUNC0(pDb, &nWrite);

  /* If required, calculate the output variable (KB of data checkpointed). 
  ** Set it to zero if an error occured.  */
  if( pnKB ){
    int nKB = 0;
    if( rc==LSM_OK && nWrite ){
      nKB = (((i64)nWrite * FUNC1(pDb->pFS)) + 1023) / 1024;
    }
    *pnKB = nKB;
  }

  return rc;
}