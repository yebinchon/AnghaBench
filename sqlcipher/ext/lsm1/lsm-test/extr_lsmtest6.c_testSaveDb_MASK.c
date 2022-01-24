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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(const char *zFile, const char *zAux){
  char *zLog = FUNC2("%s-%s", zFile, zAux);
  char *zFileSave = FUNC2("%s-save", zFile);
  char *zLogSave = FUNC2("%s-%s-save", zFile, zAux);

  FUNC3(zFileSave);
  FUNC3(zLogSave);
  FUNC0(zFile, zFileSave, 1);
  FUNC0(zLog, zLogSave, 0);

  FUNC1(zLog); FUNC1(zFileSave); FUNC1(zLogSave);
}