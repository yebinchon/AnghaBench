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
typedef  int /*<<< orphan*/  pathName ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  kHistoryFileName ; 

void
FUNC2(void)
{
	char pathName[256];

	if (gOurDirectoryPath[0] == '\0')
		return;
	(void) FUNC0(pathName, sizeof(pathName), kHistoryFileName);

	FUNC1(pathName);
}