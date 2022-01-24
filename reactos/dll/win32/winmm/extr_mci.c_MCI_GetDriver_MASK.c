#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ wDeviceID; struct TYPE_4__* lpNext; } ;
typedef  TYPE_1__* LPWINE_MCIDRIVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* MciDrivers ; 
 int /*<<< orphan*/  WINMM_cs ; 

__attribute__((used)) static LPWINE_MCIDRIVER	FUNC2(UINT wDevID)
{
    LPWINE_MCIDRIVER	wmd = 0;

    FUNC0(&WINMM_cs);
    for (wmd = MciDrivers; wmd; wmd = wmd->lpNext) {
	if (wmd->wDeviceID == wDevID)
	    break;
    }
    FUNC1(&WINMM_cs);
    return wmd;
}