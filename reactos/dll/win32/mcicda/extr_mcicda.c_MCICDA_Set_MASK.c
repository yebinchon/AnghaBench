#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dwTimeFormat; } ;
typedef  TYPE_1__ WINE_MCICDAUDIO ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int dwTimeFormat; int /*<<< orphan*/  dwCallback; int /*<<< orphan*/  dwAudio; } ;
typedef  TYPE_2__* LPMCI_SET_PARMS ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MCIERR_BAD_TIME_FORMAT ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
#define  MCI_FORMAT_MILLISECONDS 130 
#define  MCI_FORMAT_MSF 129 
#define  MCI_FORMAT_TMSF 128 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int MCI_SET_AUDIO ; 
 int MCI_SET_DOOR_CLOSED ; 
 int MCI_SET_DOOR_OPEN ; 
 int MCI_SET_TIME_FORMAT ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static DWORD FUNC4(UINT wDevID, DWORD dwFlags, LPMCI_SET_PARMS lpParms)
{
    WINE_MCICDAUDIO*	wmcda = FUNC0(wDevID);

    FUNC3("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmcda == NULL)	return MCIERR_INVALID_DEVICE_ID;

    if (dwFlags & MCI_SET_DOOR_OPEN) {
	FUNC2(wDevID, TRUE);
    }
    if (dwFlags & MCI_SET_DOOR_CLOSED) {
	FUNC2(wDevID, FALSE);
    }

    /* only functions which require valid lpParms below this line ! */
    if (lpParms == NULL) return MCIERR_NULL_PARAMETER_BLOCK;
    /*
      TRACE("dwTimeFormat=%08lX\n", lpParms->dwTimeFormat);
    */
    if (dwFlags & MCI_SET_TIME_FORMAT) {
	switch (lpParms->dwTimeFormat) {
	case MCI_FORMAT_MILLISECONDS:
	    FUNC3("MCI_FORMAT_MILLISECONDS !\n");
	    break;
	case MCI_FORMAT_MSF:
	    FUNC3("MCI_FORMAT_MSF !\n");
	    break;
	case MCI_FORMAT_TMSF:
	    FUNC3("MCI_FORMAT_TMSF !\n");
	    break;
	default:
	    return MCIERR_BAD_TIME_FORMAT;
	}
	wmcda->dwTimeFormat = lpParms->dwTimeFormat;
    }
    if (dwFlags & MCI_SET_AUDIO) /* one xp machine ignored it */
	FUNC3("SET_AUDIO %X %x\n", dwFlags, lpParms->dwAudio);

    if (dwFlags & MCI_NOTIFY)
	FUNC1(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}