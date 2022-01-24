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
struct TYPE_5__ {char* lpFileName; int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ WINE_MCIAVI ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/  dwRetSize; int /*<<< orphan*/ * lpstrReturn; } ;
typedef  TYPE_2__* LPMCI_DGV_INFO_PARMSW ;
typedef  char* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
 int MCIERR_UNRECOGNIZED_COMMAND ; 
 int MCI_INFO_FILE ; 
 int MCI_INFO_PRODUCT ; 
 int MCI_INFO_VERSION ; 
 int MCI_TEST ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

DWORD	FUNC6(UINT wDevID, DWORD dwFlags, LPMCI_DGV_INFO_PARMSW lpParms)
{
    LPCWSTR		str = 0;
    WINE_MCIAVI*	wma = FUNC2(wDevID);
    DWORD		ret = 0;
    static const WCHAR wszAviPlayer[] = {'W','i','n','e','\'','s',' ','A','V','I',' ','p','l','a','y','e','r',0};
    static const WCHAR wszVersion[] = {'1','.','1',0};

    if (lpParms == NULL || lpParms->lpstrReturn == NULL)
	return MCIERR_NULL_PARAMETER_BLOCK;
    if (wma == NULL) return MCIERR_INVALID_DEVICE_ID;
    if (dwFlags & MCI_TEST)	return 0;

    FUNC3("buf=%p, len=%u\n", lpParms->lpstrReturn, lpParms->dwRetSize);

    FUNC0(&wma->cs);

    if (dwFlags & MCI_INFO_PRODUCT)
	str = wszAviPlayer;
    else if (dwFlags & MCI_INFO_VERSION)
	str = wszVersion;
    else if (dwFlags & MCI_INFO_FILE)
	str = wma->lpFileName;
    else {
	FUNC4("Don't know this info command (%u)\n", dwFlags);
	ret = MCIERR_UNRECOGNIZED_COMMAND;
    }
    if (!ret) {
	WCHAR zero = 0;
	/* Only mciwave, mciseq and mcicda set dwRetSize (since NT). */
	FUNC5(lpParms->lpstrReturn, str ? str : &zero, lpParms->dwRetSize);
    }
    FUNC1(&wma->cs);
    return ret;
}