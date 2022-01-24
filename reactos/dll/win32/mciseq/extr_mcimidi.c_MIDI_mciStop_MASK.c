#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dwStatus; scalar_t__ hThread; scalar_t__ hMidi; int /*<<< orphan*/  wDevID; int /*<<< orphan*/  hCallback; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
struct TYPE_8__ {int /*<<< orphan*/  dwCallback; } ;
typedef  TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef  int /*<<< orphan*/  HMIDIOUT ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MCI_MODE_NOT_READY ; 
 int MCI_MODE_PAUSE ; 
 int MCI_MODE_STOP ; 
 scalar_t__ MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_ABORTED ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC6(WINE_MCIMIDI* wmm, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    DWORD		dwRet = 0;

    FUNC2("(%d, %08X, %p);\n", wmm->wDevID, dwFlags, lpParms);

    if (wmm->dwStatus != MCI_MODE_STOP) {
	HANDLE old = FUNC0(&wmm->hCallback, NULL);
	if (old) FUNC4(old, wmm->wDevID, MCI_NOTIFY_ABORTED);
    }

    if (wmm->dwStatus != MCI_MODE_STOP) {
	int	oldstat = wmm->dwStatus;

	wmm->dwStatus = MCI_MODE_NOT_READY;
	if (oldstat == MCI_MODE_PAUSE)
	    dwRet = FUNC5((HMIDIOUT)wmm->hMidi);

	if (wmm->hThread)
	    FUNC3(wmm->hThread, INFINITE);
    }

    /* sanity reset */
    wmm->dwStatus = MCI_MODE_STOP;

    if ((dwFlags & MCI_NOTIFY) && lpParms && MMSYSERR_NOERROR==dwRet)
	FUNC1(lpParms->dwCallback, wmm, MCI_NOTIFY_SUCCESSFUL);
    return dwRet;
}