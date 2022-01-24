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
struct TYPE_8__ {scalar_t__ dwStatus; scalar_t__ nUseCount; scalar_t__ hFile; int /*<<< orphan*/  lpstrName; int /*<<< orphan*/  lpstrCopyright; int /*<<< orphan*/  lpstrElementName; int /*<<< orphan*/  tracks; scalar_t__ hThread; int /*<<< orphan*/  wDevID; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
struct TYPE_9__ {int /*<<< orphan*/  dwCallback; } ;
typedef  TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MCIERR_INTERNAL ; 
 scalar_t__ MCI_MODE_STOP ; 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int /*<<< orphan*/  MCI_WAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC7(WINE_MCIMIDI* wmm, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{

    FUNC5("(%d, %08X, %p);\n", wmm->wDevID, dwFlags, lpParms);

    if (wmm->dwStatus != MCI_MODE_STOP) {
	/* mciStop handles MCI_NOTIFY_ABORTED */
	FUNC4(wmm, MCI_WAIT, lpParms);
    }

    wmm->nUseCount--;
    if (wmm->nUseCount == 0) {
	if (wmm->hFile != 0) {
	    FUNC6(wmm->hFile, 0);
	    wmm->hFile = 0;
	    FUNC5("hFile closed !\n");
	}
	if (wmm->hThread) {
	    FUNC0(wmm->hThread);
	    wmm->hThread = 0;
	}
	FUNC2(FUNC1(), 0, wmm->tracks);
	FUNC2(FUNC1(), 0, wmm->lpstrElementName);
	FUNC2(FUNC1(), 0, wmm->lpstrCopyright);
	FUNC2(FUNC1(), 0, wmm->lpstrName);
    } else {
	FUNC5("Shouldn't happen... nUseCount=%d\n", wmm->nUseCount);
	return MCIERR_INTERNAL;
    }

    if ((dwFlags & MCI_NOTIFY) && lpParms) {
	FUNC3(lpParms->dwCallback, wmm, MCI_NOTIFY_SUCCESSFUL);
    }
    return 0;
}