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
struct TYPE_7__ {scalar_t__ nUseCount; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ WINE_MCICDAUDIO ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  dwCallback; } ;
typedef  TYPE_2__* LPMCI_GENERIC_PARMS ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int /*<<< orphan*/  MCI_WAIT ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 

__attribute__((used)) static DWORD FUNC5(UINT wDevID, DWORD dwParam, LPMCI_GENERIC_PARMS lpParms)
{
    WINE_MCICDAUDIO*	wmcda = FUNC1(wDevID);

    FUNC4("(%04X, %08X, %p);\n", wDevID, dwParam, lpParms);

    if (wmcda == NULL) 	return MCIERR_INVALID_DEVICE_ID;

    FUNC3(wDevID, MCI_WAIT, NULL);

    if (--wmcda->nUseCount == 0) {
	FUNC0(wmcda->handle);
    }
    if ((dwParam & MCI_NOTIFY) && lpParms)
	FUNC2(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}