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
typedef  int /*<<< orphan*/  lsm_i64 ;
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_6__ {int (* xRead ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ;} ;
typedef  TYPE_2__ lsm_env ;
struct TYPE_7__ {int /*<<< orphan*/  pReal; TYPE_1__* pDb; } ;
struct TYPE_5__ {scalar_t__ bCrashed; } ;
typedef  TYPE_3__ LsmFile ;

/* Variables and functions */
 int LSM_IOERR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 TYPE_2__* FUNC1 () ; 

__attribute__((used)) static int FUNC2(lsm_file *pFile, lsm_i64 iOff, void *pData, int nData){
  lsm_env *pRealEnv = FUNC1();
  LsmFile *p = (LsmFile *)pFile;
  if( p->pDb->bCrashed ) return LSM_IOERR;
  return pRealEnv->xRead(p->pReal, iOff, pData, nData);
}