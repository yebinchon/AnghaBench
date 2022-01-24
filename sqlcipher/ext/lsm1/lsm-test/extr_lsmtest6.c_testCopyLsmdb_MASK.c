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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void FUNC4(const char *zFrom, const char *zTo){
  char *zLog1 = FUNC2("%s-log", zFrom);
  char *zLog2 = FUNC2("%s-log", zTo);
  char *zShm1 = FUNC2("%s-shm", zFrom);
  char *zShm2 = FUNC2("%s-shm", zTo);

  FUNC3(zShm2);
  FUNC3(zLog2);
  FUNC3(zTo);
  FUNC0(zFrom, zTo, 1);
  FUNC0(zLog1, zLog2, 0);
  FUNC0(zShm1, zShm2, 0);

  FUNC1(zLog1); FUNC1(zLog2); FUNC1(zShm1); FUNC1(zShm2);
}