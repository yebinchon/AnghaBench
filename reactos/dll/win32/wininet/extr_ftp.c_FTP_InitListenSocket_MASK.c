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
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_4__ {int /*<<< orphan*/  sin_port; } ;
struct TYPE_5__ {int lstnSocket; TYPE_1__ lstnSocketAddress; TYPE_1__ socketAddress; } ;
typedef  TYPE_2__ ftp_session_t ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_BACKLOG ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(ftp_session_t *lpwfs)
{
    BOOL bSuccess = FALSE;
    socklen_t namelen = sizeof(lpwfs->lstnSocketAddress);

    FUNC0("\n");

    FUNC5();
    lpwfs->lstnSocket = FUNC7(AF_INET, SOCK_STREAM, 0);
    if (lpwfs->lstnSocket == -1)
    {
        FUNC0("Unable to create listening socket\n");
            goto lend;
    }

    /* We obtain our ip addr from the name of the command channel socket */
    lpwfs->lstnSocketAddress = lpwfs->socketAddress;

    /* and get the system to assign us a port */
    lpwfs->lstnSocketAddress.sin_port = FUNC4(0);

    if (FUNC1(lpwfs->lstnSocket,(struct sockaddr *) &lpwfs->lstnSocketAddress, sizeof(lpwfs->lstnSocketAddress)) == -1)
    {
        FUNC0("Unable to bind socket\n");
        goto lend;
    }

    if (FUNC6(lpwfs->lstnSocket, MAX_BACKLOG) == -1)
    {
        FUNC0("listen failed\n");
        goto lend;
    }

    if (FUNC3(lpwfs->lstnSocket, (struct sockaddr *) &lpwfs->lstnSocketAddress, &namelen) != -1)
        bSuccess = TRUE;

lend:
    if (!bSuccess && lpwfs->lstnSocket != -1)
    {
        FUNC2(lpwfs->lstnSocket);
        lpwfs->lstnSocket = -1;
    }

    return bSuccess;
}