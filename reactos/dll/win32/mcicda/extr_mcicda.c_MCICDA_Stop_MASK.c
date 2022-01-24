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
struct TYPE_7__ {scalar_t__ hThread; scalar_t__ stopEvent; int /*<<< orphan*/  handle; int /*<<< orphan*/ * dsObj; int /*<<< orphan*/ * dsBuf; int /*<<< orphan*/  wNotifyDeviceID; int /*<<< orphan*/  hCallback; } ;
typedef  TYPE_1__ WINE_MCICDAUDIO ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  dwCallback; } ;
typedef  TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  IOCTL_CDROM_STOP_AUDIO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int MCIERR_HARDWARE ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_ABORTED ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC11(UINT wDevID, DWORD dwFlags, LPMCI_GENERIC_PARMS lpParms)
{
    WINE_MCICDAUDIO*	wmcda = FUNC4(wDevID);
    HANDLE		oldcb;
    DWORD               br;

    FUNC7("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmcda == NULL)	return MCIERR_INVALID_DEVICE_ID;

    oldcb = FUNC3(&wmcda->hCallback, NULL);
    if (oldcb) FUNC10(oldcb, wmcda->wNotifyDeviceID, MCI_NOTIFY_ABORTED);

    if (wmcda->hThread != 0) {
        FUNC6(wmcda->stopEvent);
        FUNC8(wmcda->hThread, INFINITE);

        FUNC0(wmcda->hThread);
        wmcda->hThread = 0;
        FUNC0(wmcda->stopEvent);
        wmcda->stopEvent = 0;

        FUNC1(wmcda->dsBuf);
        wmcda->dsBuf = NULL;
        FUNC2(wmcda->dsObj);
        wmcda->dsObj = NULL;
    }
    else if (!FUNC9(wmcda->handle, IOCTL_CDROM_STOP_AUDIO, NULL, 0, NULL, 0, &br, NULL))
        return MCIERR_HARDWARE;

    if ((dwFlags & MCI_NOTIFY) && lpParms)
	FUNC5(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}