#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dwPrivate; struct TYPE_5__* lpstrElementName; struct TYPE_5__* lpstrAlias; struct TYPE_5__* lpstrDeviceType; struct TYPE_5__* lpNext; int /*<<< orphan*/  hDriver; } ;
typedef  TYPE_1__* LPWINE_MCIDRIVER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* MciDrivers ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  WINMM_cs ; 

__attribute__((used)) static	BOOL	FUNC6(LPWINE_MCIDRIVER wmd)
{
    LPWINE_MCIDRIVER*		tmp;

    if (!wmd)
	return TRUE;

    FUNC0(wmd->hDriver, 0, 0);

    if (wmd->dwPrivate != 0)
	FUNC5("Unloading mci driver with non nul dwPrivate field\n");

    FUNC1(&WINMM_cs);
    for (tmp = &MciDrivers; *tmp; tmp = &(*tmp)->lpNext) {
	if (*tmp == wmd) {
	    *tmp = wmd->lpNext;
	    break;
	}
    }
    FUNC4(&WINMM_cs);

    FUNC3(FUNC2(), 0, wmd->lpstrDeviceType);
    FUNC3(FUNC2(), 0, wmd->lpstrAlias);
    FUNC3(FUNC2(), 0, wmd->lpstrElementName);

    FUNC3(FUNC2(), 0, wmd);
    return TRUE;
}