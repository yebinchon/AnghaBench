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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(const char *zFile){
  char *zLog = FUNC1("%s-log", zFile);
  char *zShm = FUNC1("%s-shm", zFile);
  FUNC2(zFile);
  FUNC2(zLog);
  FUNC2(zShm);
  FUNC0(zLog);
  FUNC0(zShm);
}