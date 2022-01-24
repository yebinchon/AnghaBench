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
struct TYPE_5__ {int /*<<< orphan*/  dwContext; } ;
struct TYPE_6__ {TYPE_1__ hdr; int /*<<< orphan*/  sndSocket; } ;
typedef  TYPE_2__ ftp_session_t ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTP_CMD_ACCT ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  szNoAccount ; 

__attribute__((used)) static BOOL FUNC4(ftp_session_t *lpwfs)
{
    INT nResCode;
    BOOL bSuccess = FALSE;

    FUNC3("\n");
    if (!FUNC1(lpwfs->sndSocket, FTP_CMD_ACCT, szNoAccount, 0, 0, 0))
        goto lend;

    nResCode = FUNC0(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
        bSuccess = TRUE;
    else
        FUNC2(nResCode);

lend:
    return bSuccess;
}