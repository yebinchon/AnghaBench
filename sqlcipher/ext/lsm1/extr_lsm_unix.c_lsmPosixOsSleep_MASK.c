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
 int LSM_IOERR ; 
 int LSM_OK ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(lsm_env *pEnv, int us){
#if 0
  /* Apparently on Android usleep() returns void */
  if( usleep(us) ) return LSM_IOERR;
#endif
  FUNC0(us);
  return LSM_OK;
}