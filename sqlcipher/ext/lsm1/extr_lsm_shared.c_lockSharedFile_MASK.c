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
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_3__ {int /*<<< orphan*/  pFile; scalar_t__ bMultiProc; } ;
typedef  TYPE_1__ Database ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(lsm_env *pEnv, Database *p, int iLock, int eOp){
  int rc = LSM_OK;
  if( p->bMultiProc ){
    rc = FUNC0(pEnv, p->pFile, iLock, eOp);
  }
  return rc;
}