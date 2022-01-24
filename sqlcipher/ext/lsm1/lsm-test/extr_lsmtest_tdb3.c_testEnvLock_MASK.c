#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_6__ {int (* xLock ) (int /*<<< orphan*/ ,int,int) ;} ;
typedef  TYPE_2__ lsm_env ;
struct TYPE_7__ {int /*<<< orphan*/  pReal; TYPE_1__* pDb; } ;
struct TYPE_5__ {scalar_t__ bNoRecovery; } ;
typedef  TYPE_3__ LsmFile ;

/* Variables and functions */
 int LSM_BUSY ; 
 int LSM_LOCK_EXCL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC1 () ; 

__attribute__((used)) static int FUNC2(lsm_file *pFile, int iLock, int eType){
  LsmFile *p = (LsmFile *)pFile;
  lsm_env *pRealEnv = FUNC1();

  if( iLock==2 && eType==LSM_LOCK_EXCL && p->pDb->bNoRecovery ){
    return LSM_BUSY;
  }
  return pRealEnv->xLock(p->pReal, iLock, eType);
}