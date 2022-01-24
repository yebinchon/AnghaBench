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
 int LSM_IOERR_BKPT ; 
 int LSM_OK ; 
 int FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(lsm_env *pEnv, const char *zFile){
  int prc = FUNC0(zFile);
  return prc ? LSM_IOERR_BKPT : LSM_OK;
}