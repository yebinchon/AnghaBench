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
 int /*<<< orphan*/  Vt100VisibleStrlen ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  gl_strlen ; 
 int /*<<< orphan*/  kHistoryFileName ; 

void
FUNC3(void)
{
	char pathName[256];

	if (gOurDirectoryPath[0] == '\0')
		return;		/* Don't create in root directory. */
	(void) FUNC0(pathName, sizeof(pathName), kHistoryFileName);

	gl_strlen = Vt100VisibleStrlen;
	FUNC2(pathName);
	(void) FUNC1(pathName, 00600);
}