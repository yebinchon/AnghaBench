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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_3__ {int nArray; int nAlloc; int /*<<< orphan*/ * aArray; } ;
typedef  TYPE_1__ IntArray ;

/* Variables and functions */
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(lsm_env *pEnv, IntArray *p, u32 iVal){
  FUNC0( p->nArray<=p->nAlloc );
  if( p->nArray>=p->nAlloc ){
    u32 *aNew;
    int nNew = p->nArray ? p->nArray*2 : 128;
    aNew = FUNC1(pEnv, p->aArray, nNew*sizeof(u32));
    if( !aNew ) return LSM_NOMEM_BKPT;
    p->aArray = aNew;
    p->nAlloc = nNew;
  }

  p->aArray[p->nArray++] = iVal;
  return LSM_OK;
}