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
struct TYPE_6__ {int /*<<< orphan*/  dwContext; } ;
struct TYPE_7__ {TYPE_1__ hdr; int /*<<< orphan*/  lpszPassword; int /*<<< orphan*/  sndSocket; } ;
typedef  TYPE_2__ ftp_session_t ;
typedef  int INT ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FTP_CMD_PASS ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int TRUE ; 

__attribute__((used)) static BOOL FUNC5(ftp_session_t *lpwfs)
{
    INT nResCode;
    BOOL bSuccess = FALSE;

    FUNC4("\n");
    if (!FUNC2(lpwfs->sndSocket, FTP_CMD_PASS, lpwfs->lpszPassword, 0, 0, 0))
        goto lend;

    nResCode = FUNC0(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
    {
        FUNC4("Received reply code %d\n", nResCode);
        /* Login successful... */
        if (nResCode == 230)
            bSuccess = TRUE;
        /* Command not implemented, superfluous at the server site... */
        /* Need account for login... */
        else if (nResCode == 332)
            bSuccess = FUNC1(lpwfs);
        else
            FUNC3(nResCode);
    }

lend:
    FUNC4("Returning %d\n", bSuccess);
    return bSuccess;
}