#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nUseCount; int fShareable; scalar_t__ handle; int /*<<< orphan*/  dwTimeFormat; int /*<<< orphan*/  wNotifyDeviceID; } ;
typedef  TYPE_1__ WINE_MCICDAUDIO ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  dwCallback; int /*<<< orphan*/ * lpstrElementName; int /*<<< orphan*/  wDeviceID; } ;
typedef  int /*<<< orphan*/  MCIDEVICEID ;
typedef  TYPE_2__* LPMCI_OPEN_PARMSW ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DRIVE_CDROM ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MCIERR_CANNOT_LOAD_DRIVER ; 
 int MCIERR_FLAGS_NOT_COMPATIBLE ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_INVALID_FILE ; 
 int MCIERR_MUST_USE_SHAREABLE ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
 int /*<<< orphan*/  MCI_FORMAT_MSF ; 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int MCI_OPEN_ELEMENT ; 
 int MCI_OPEN_ELEMENT_ID ; 
 int MCI_OPEN_SHAREABLE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 char FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC11(UINT wDevID, DWORD dwFlags, LPMCI_OPEN_PARMSW lpOpenParms)
{
    MCIDEVICEID		dwDeviceID;
    DWORD               ret;
    WINE_MCICDAUDIO* 	wmcda = (WINE_MCICDAUDIO*)FUNC9(wDevID);
    WCHAR               root[7], drive = 0;

    FUNC4("(%04X, %08X, %p);\n", wDevID, dwFlags, lpOpenParms);

    if (lpOpenParms == NULL) 		return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmcda == NULL)			return MCIERR_INVALID_DEVICE_ID;

    dwDeviceID = lpOpenParms->wDeviceID;

    if (wmcda->nUseCount > 0) {
	/* The driver is already open on this channel */
	/* If the driver was opened shareable before and this open specifies */
	/* shareable then increment the use count */
	if (wmcda->fShareable && (dwFlags & MCI_OPEN_SHAREABLE))
	    ++wmcda->nUseCount;
	else
	    return MCIERR_MUST_USE_SHAREABLE;
    } else {
	wmcda->nUseCount = 1;
	wmcda->fShareable = dwFlags & MCI_OPEN_SHAREABLE;
    }
    if (dwFlags & MCI_OPEN_ELEMENT) {
        if (dwFlags & MCI_OPEN_ELEMENT_ID) {
            FUNC5("MCI_OPEN_ELEMENT_ID %p! Abort\n", lpOpenParms->lpstrElementName);
            ret = MCIERR_FLAGS_NOT_COMPATIBLE;
            goto the_error;
        }
        FUNC4("MCI_OPEN_ELEMENT element name: %s\n", FUNC6(lpOpenParms->lpstrElementName));
        /* Only the first letter counts since w2k
         * Win9x-NT accept only d: and w98SE accepts d:\foobar as well.
         * Play d:\Track03.cda plays from the first track, not #3. */
        if (!FUNC7(lpOpenParms->lpstrElementName[0]))
        {
            ret = MCIERR_INVALID_FILE;
            goto the_error;
        }
        drive = FUNC10(lpOpenParms->lpstrElementName[0]);
        root[0] = drive; root[1] = ':'; root[2] = '\\'; root[3] = '\0';
        if (FUNC1(root) != DRIVE_CDROM)
        {
            ret = MCIERR_INVALID_FILE;
            goto the_error;
        }
    }
    else
    {
        root[0] = 'A'; root[1] = ':'; root[2] = '\\'; root[3] = '\0';
        for ( ; root[0] <= 'Z'; root[0]++)
        {
            if (FUNC1(root) == DRIVE_CDROM)
            {
                drive = root[0];
                break;
            }
        }
        if (!drive)
        {
            ret = MCIERR_CANNOT_LOAD_DRIVER; /* drvOpen should return this */
            goto the_error;
        }
    }

    wmcda->wNotifyDeviceID = dwDeviceID;
    wmcda->dwTimeFormat = MCI_FORMAT_MSF;

    /* now, open the handle */
    root[0] = root[1] = '\\'; root[2] = '.'; root[3] = '\\'; root[4] = drive; root[5] = ':'; root[6] = '\0';
    wmcda->handle = FUNC0(root, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, 0);
    if (wmcda->handle == INVALID_HANDLE_VALUE)
    {
        ret = MCIERR_MUST_USE_SHAREABLE;
        goto the_error;
    }

    if (dwFlags & MCI_NOTIFY) {
	FUNC8(FUNC2(FUNC3(lpOpenParms->dwCallback)),
			dwDeviceID, MCI_NOTIFY_SUCCESSFUL);
    }
    return 0;

 the_error:
    --wmcda->nUseCount;
    return ret;
}