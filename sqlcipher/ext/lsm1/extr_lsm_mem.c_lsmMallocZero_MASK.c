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
typedef  int /*<<< orphan*/  lsm_env ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 

void *FUNC3(lsm_env *pEnv, size_t N){
  void *pRet;
  FUNC0( pEnv );
  pRet = FUNC1(pEnv, N);
  if( pRet ) FUNC2(pRet, 0, N);
  return pRet;
}