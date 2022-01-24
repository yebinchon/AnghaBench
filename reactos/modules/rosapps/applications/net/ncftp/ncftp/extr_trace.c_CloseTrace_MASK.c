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
typedef  int /*<<< orphan*/  pathName2 ;
typedef  int /*<<< orphan*/  pathName ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/ * gTraceFile ; 
 int /*<<< orphan*/  gTraceTime ; 
 scalar_t__ FUNC4 () ; 
 char* kTraceFileName ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(void)
{
	char pathName[256];
	char pathName2[256];
	char tName[32];

	if ((gOurDirectoryPath[0] == '\0') || (gTraceFile == NULL))
		return;

	(void) FUNC6(tName, "trace.%u", (unsigned int) FUNC4());
	(void) FUNC0(pathName, sizeof(pathName), tName);
	(void) FUNC0(pathName2, sizeof(pathName2), kTraceFileName);

	(void) FUNC7(&gTraceTime);
	(void) FUNC3(gTraceFile, "SESSION ENDED at:    %s", FUNC1(&gTraceTime));
	(void) FUNC2(gTraceFile);

	(void) FUNC8(pathName2);
	(void) FUNC5(pathName, pathName2);
}