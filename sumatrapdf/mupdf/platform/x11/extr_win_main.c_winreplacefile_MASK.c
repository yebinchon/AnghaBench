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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  pdfapp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  REPLACEFILE_IGNORE_MERGE_ERRORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(pdfapp_t *app, char *source, char *target)
{
	wchar_t wsource[PATH_MAX];
	wchar_t wtarget[PATH_MAX];

	int sz = FUNC2(CP_UTF8, 0, source, -1, wsource, PATH_MAX);
	if (sz == 0)
	{
		FUNC4(app, "cannot convert filename to Unicode");
		return;
	}

	sz = FUNC2(CP_UTF8, 0, target, -1, wtarget, PATH_MAX);
	if (sz == 0)
	{
		FUNC4(app, "cannot convert filename to Unicode");
		return;
	}

#if (_WIN32_WINNT >= 0x0500)
	ReplaceFile(wtarget, wsource, NULL, REPLACEFILE_IGNORE_MERGE_ERRORS, NULL, NULL);
#else
	FUNC0(wtarget);
	FUNC1(wsource, wtarget);
#endif
}