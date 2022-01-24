#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ WINE_MCIAVI ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int dwItem; void* dwReturn; } ;
typedef  TYPE_2__* LPMCI_GETDEVCAPS_PARMS ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_MISSING_PARAMETER ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
 int MCIERR_UNSUPPORTED_FUNCTION ; 
 int /*<<< orphan*/  MCI_DEVTYPE_DIGITAL_VIDEO ; 
#define  MCI_DGV_GETDEVCAPS_CAN_FREEZE 144 
#define  MCI_DGV_GETDEVCAPS_CAN_LOCK 143 
#define  MCI_DGV_GETDEVCAPS_CAN_REVERSE 142 
#define  MCI_DGV_GETDEVCAPS_CAN_STRETCH 141 
#define  MCI_DGV_GETDEVCAPS_CAN_STR_IN 140 
#define  MCI_DGV_GETDEVCAPS_CAN_TEST 139 
#define  MCI_DGV_GETDEVCAPS_HAS_STILL 138 
#define  MCI_DGV_GETDEVCAPS_PALETTES 137 
 int /*<<< orphan*/  MCI_FALSE ; 
#define  MCI_GETDEVCAPS_CAN_EJECT 136 
#define  MCI_GETDEVCAPS_CAN_PLAY 135 
#define  MCI_GETDEVCAPS_CAN_RECORD 134 
#define  MCI_GETDEVCAPS_CAN_SAVE 133 
#define  MCI_GETDEVCAPS_COMPOUND_DEVICE 132 
#define  MCI_GETDEVCAPS_DEVICE_TYPE 131 
#define  MCI_GETDEVCAPS_HAS_AUDIO 130 
#define  MCI_GETDEVCAPS_HAS_VIDEO 129 
 int MCI_GETDEVCAPS_ITEM ; 
#define  MCI_GETDEVCAPS_USES_FILES 128 
 int MCI_RESOURCE_RETURNED ; 
 int MCI_TEST ; 
 int /*<<< orphan*/  MCI_TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

DWORD	FUNC6(UINT wDevID, DWORD dwFlags,  LPMCI_GETDEVCAPS_PARMS lpParms)
{
    WINE_MCIAVI*	wma = FUNC4(wDevID);
    DWORD		ret = MCIERR_UNSUPPORTED_FUNCTION;

    FUNC5("(%04x, %08X, %p)\n", wDevID, dwFlags, lpParms);

    if (lpParms == NULL) 	return MCIERR_NULL_PARAMETER_BLOCK;
    if (wma == NULL)		return MCIERR_INVALID_DEVICE_ID;
    if (!(dwFlags & MCI_GETDEVCAPS_ITEM)) return MCIERR_MISSING_PARAMETER;
    if (dwFlags & MCI_TEST)	return 0;

    FUNC0(&wma->cs);

    if (dwFlags & MCI_GETDEVCAPS_ITEM) {
	switch (lpParms->dwItem) {
	case MCI_GETDEVCAPS_DEVICE_TYPE:
	    FUNC5("MCI_GETDEVCAPS_DEVICE_TYPE !\n");
	    lpParms->dwReturn = FUNC3(MCI_DEVTYPE_DIGITAL_VIDEO, MCI_DEVTYPE_DIGITAL_VIDEO);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_HAS_AUDIO:
	    FUNC5("MCI_GETDEVCAPS_HAS_AUDIO !\n");
	    lpParms->dwReturn = FUNC3(TRUE, MCI_TRUE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_HAS_VIDEO:
	    FUNC5("MCI_GETDEVCAPS_HAS_VIDEO !\n");
	    lpParms->dwReturn = FUNC3(TRUE, MCI_TRUE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_USES_FILES:
	    FUNC5("MCI_GETDEVCAPS_USES_FILES !\n");
	    lpParms->dwReturn = FUNC3(TRUE, MCI_TRUE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_COMPOUND_DEVICE:
	    FUNC5("MCI_GETDEVCAPS_COMPOUND_DEVICE !\n");
	    lpParms->dwReturn = FUNC3(TRUE, MCI_TRUE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_CAN_EJECT:
	    FUNC5("MCI_GETDEVCAPS_CAN_EJECT !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_CAN_PLAY:
	    FUNC5("MCI_GETDEVCAPS_CAN_PLAY !\n");
	    lpParms->dwReturn = FUNC3(TRUE, MCI_TRUE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_CAN_RECORD:
	    FUNC5("MCI_GETDEVCAPS_CAN_RECORD !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_GETDEVCAPS_CAN_SAVE:
	    FUNC5("MCI_GETDEVCAPS_CAN_SAVE !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_CAN_REVERSE:
	    FUNC5("MCI_DGV_GETDEVCAPS_CAN_REVERSE !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE); /* FIXME */
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_CAN_STRETCH:
	    FUNC5("MCI_DGV_GETDEVCAPS_CAN_STRETCH !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE); /* FIXME */
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_CAN_LOCK:
	    FUNC5("MCI_DGV_GETDEVCAPS_CAN_LOCK !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_CAN_FREEZE:
	    FUNC5("MCI_DGV_GETDEVCAPS_CAN_FREEZE !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_CAN_STR_IN:
	    FUNC5("MCI_DGV_GETDEVCAPS_CAN_STRETCH_INPUT !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_HAS_STILL:
	    FUNC5("MCI_DGV_GETDEVCAPS_HAS_STILL !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_CAN_TEST:
	    FUNC5("MCI_DGV_GETDEVCAPS_CAN_TEST !\n");
	    lpParms->dwReturn = FUNC3(TRUE, MCI_TRUE);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_DGV_GETDEVCAPS_PALETTES:
	    FUNC5("MCI_DGV_GETDEVCAPS_PALETTES !\n");
	    lpParms->dwReturn = FUNC3(FALSE, MCI_FALSE); /* FIXME */
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	/* w2k does not know MAX_WINDOWS or MAX/MINIMUM_RATE */
	default:
            FUNC1("Unknown capability (%08x) !\n", lpParms->dwItem);
            break;
	}
    }

    FUNC2(&wma->cs);
    return ret;
}