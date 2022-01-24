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
struct TYPE_8__ {int /*<<< orphan*/  dwContext; } ;
struct TYPE_9__ {int lstnSocket; TYPE_1__ hdr; int /*<<< orphan*/  sndSocket; } ;
typedef  TYPE_2__ ftp_session_t ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTP_CMD_STOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static BOOL FUNC8(ftp_session_t *lpwfs, LPCWSTR lpszRemoteFile, DWORD dwType)
{
    INT nResCode;
    BOOL bSuccess = FALSE;

    FUNC6("\n");
    if (!FUNC0(lpwfs))
        goto lend;

    if (!FUNC4(lpwfs, dwType))
        goto lend;

    if (!FUNC3(lpwfs))
        goto lend;

    if (!FUNC2(lpwfs->sndSocket, FTP_CMD_STOR, lpszRemoteFile, 0, 0, 0))
	    goto lend;
    nResCode = FUNC1(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
    {
        if (nResCode == 150 || nResCode == 125)
            bSuccess = TRUE;
	else
            FUNC5(nResCode);
    }

lend:
    if (!bSuccess && lpwfs->lstnSocket != -1)
    {
        FUNC7(lpwfs->lstnSocket);
        lpwfs->lstnSocket = -1;
    }

    return bSuccess;
}