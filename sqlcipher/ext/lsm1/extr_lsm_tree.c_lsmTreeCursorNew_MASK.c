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
struct TYPE_4__ {int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  TreeCursor ;

/* Variables and functions */
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

int FUNC2(lsm_db *pDb, int bOld, TreeCursor **ppCsr){
  TreeCursor *pCsr;
  *ppCsr = pCsr = FUNC0(pDb->pEnv, sizeof(TreeCursor));
  if( pCsr ){
    FUNC1(pDb, bOld, pCsr);
    return LSM_OK;
  }
  return LSM_NOMEM_BKPT;
}