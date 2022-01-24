#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_mutex ;
typedef  int /*<<< orphan*/  lsm_env ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/ * aStaticNoopMutex ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(
  lsm_env *pEnv,
  int iMutex,
  lsm_mutex **ppStatic
){
  FUNC1( iMutex>=1 && iMutex<=(int)FUNC0(aStaticNoopMutex) );
  *ppStatic = (lsm_mutex *)&aStaticNoopMutex[iMutex-1];
  return LSM_OK;
}