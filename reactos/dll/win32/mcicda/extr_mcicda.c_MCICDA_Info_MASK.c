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
typedef  int /*<<< orphan*/  toc ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ WINE_MCICDAUDIO ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  dwCallback; int /*<<< orphan*/  dwRetSize; int /*<<< orphan*/ * lpstrReturn; } ;
typedef  TYPE_2__* LPMCI_INFO_PARMSW ;
typedef  char const* LPCWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CDROM_TOC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOCTL_CDROM_READ_TOC ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_MISSING_PARAMETER ; 
 int MCIERR_NO_IDENTITY ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
 int MCIERR_PARAM_OVERFLOW ; 
 int MCI_INFO_MEDIA_IDENTITY ; 
 int MCI_INFO_MEDIA_UPC ; 
 int MCI_INFO_PRODUCT ; 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

__attribute__((used)) static DWORD FUNC10(UINT wDevID, DWORD dwFlags, LPMCI_INFO_PARMSW lpParms)
{
    LPCWSTR		str = NULL;
    WINE_MCICDAUDIO*	wmcda = FUNC2(wDevID);
    DWORD		ret = 0;
    WCHAR		buffer[16];

    FUNC4("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (lpParms == NULL || lpParms->lpstrReturn == NULL)
	return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmcda == NULL) return MCIERR_INVALID_DEVICE_ID;

    FUNC4("buf=%p, len=%u\n", *lpParms->lpstrReturn, lpParms->dwRetSize);

    if (dwFlags & MCI_INFO_PRODUCT) {
        static const WCHAR wszAudioCd[] = {'W','i','n','e','\'','s',' ','a','u','d','i','o',' ','C','D',0};
        str = wszAudioCd;
    } else if (dwFlags & MCI_INFO_MEDIA_UPC) {
	ret = MCIERR_NO_IDENTITY;
    } else if (dwFlags & MCI_INFO_MEDIA_IDENTITY) {
	DWORD	    res = 0;
        CDROM_TOC   toc;
        DWORD       br;
	static const WCHAR wszLu[] = {'%','l','u',0};

        if (!FUNC7(wmcda->handle, IOCTL_CDROM_READ_TOC, NULL, 0,
                             &toc, sizeof(toc), &br, NULL)) {
	    return FUNC1(wmcda);
	}

	res = FUNC0(&toc);
	FUNC9(buffer, wszLu, res);
	str = buffer;
    } else {
	FUNC5("Don't know this info command (%u)\n", dwFlags);
	ret = MCIERR_MISSING_PARAMETER;
    }
    if (!ret) {
	FUNC4("=> %s\n", FUNC6(str));
	if (lpParms->dwRetSize) {
	    /* FIXME? Since NT, mciwave, mciseq and mcicda set dwRetSize
	     *        to the number of characters written, excluding \0. */
	    FUNC8(lpParms->lpstrReturn, str, lpParms->dwRetSize);
	} else ret = MCIERR_PARAM_OVERFLOW;
    }
    if (MMSYSERR_NOERROR==ret && (dwFlags & MCI_NOTIFY))
	FUNC3(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return ret;
}