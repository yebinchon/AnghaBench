#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dwStatus; scalar_t__ nUseCount; scalar_t__ hFile; int /*<<< orphan*/ * lpFileName; int /*<<< orphan*/  wfxRef; int /*<<< orphan*/ * lpWaveFormat; } ;
typedef  TYPE_1__ WINE_MCIWAVE ;
struct TYPE_9__ {int /*<<< orphan*/  dwCallback; } ;
typedef  int /*<<< orphan*/  MCIDEVICEID ;
typedef  TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ MCIERR_INVALID_DEVICE_ID ; 
 scalar_t__ MCI_MODE_STOP ; 
 scalar_t__ MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_FAILURE ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int /*<<< orphan*/  MCI_WAIT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC7(MCIDEVICEID wDevID, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    DWORD		dwRet = 0;
    WINE_MCIWAVE*	wmw = FUNC3(wDevID);

    FUNC2("(%u, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmw == NULL)		return MCIERR_INVALID_DEVICE_ID;

    if (wmw->dwStatus != MCI_MODE_STOP) {
        /* mciStop handles MCI_NOTIFY_ABORTED */
	dwRet = FUNC5(wDevID, MCI_WAIT, lpParms);
    }

    wmw->nUseCount--;

    if (wmw->nUseCount == 0) {
	if (wmw->hFile != 0) {
	    FUNC6(wmw->hFile, 0);
	    wmw->hFile = 0;
	}
    }

    if (wmw->lpWaveFormat != &wmw->wfxRef)
	FUNC1(FUNC0(), 0, wmw->lpWaveFormat);
    wmw->lpWaveFormat = &wmw->wfxRef;
    FUNC1(FUNC0(), 0, wmw->lpFileName);
    wmw->lpFileName = NULL;

    if ((dwFlags & MCI_NOTIFY) && lpParms) {
	FUNC4(lpParms->dwCallback, wmw,
	    (dwRet == 0) ? MCI_NOTIFY_SUCCESSFUL : MCI_NOTIFY_FAILURE);
    }

    return 0;
}