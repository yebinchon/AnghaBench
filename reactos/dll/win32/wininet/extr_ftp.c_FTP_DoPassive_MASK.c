#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  S_addr; } ;
struct TYPE_9__ {TYPE_2__ S_un; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_3__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dwContext; } ;
struct TYPE_10__ {int pasvSocket; struct sockaddr_in socketAddress; TYPE_1__ hdr; int /*<<< orphan*/  sndSocket; } ;
typedef  TYPE_4__ ftp_session_t ;
typedef  int /*<<< orphan*/  dataSocketAddress ;
typedef  char* LPSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTP_CMD_PASV ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,struct sockaddr*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,char*,int*,int*,int*,int*,int*,int*) ; 

__attribute__((used)) static BOOL FUNC10(ftp_session_t *lpwfs)
{
    INT nResCode;
    BOOL bSuccess = FALSE;

    FUNC5("\n");
    if (!FUNC2(lpwfs->sndSocket, FTP_CMD_PASV, NULL, 0, 0, 0))
        goto lend;

    nResCode = FUNC1(lpwfs, lpwfs->hdr.dwContext);
    if (nResCode)
    {
        if (nResCode == 227)
	{
	    LPSTR lpszResponseBuffer = FUNC4();
	    LPSTR p;
	    int f[6];
	    int i;
	    char *pAddr, *pPort;
	    INT nsocket = -1;
	    struct sockaddr_in dataSocketAddress;

	    p = lpszResponseBuffer+4; /* skip status code */
	    while (*p != '\0' && (*p < '0' || *p > '9')) p++;

	    if (*p == '\0')
	    {
		FUNC0("no address found in response, aborting\n");
		goto lend;
	    }

	    if (FUNC9(p, "%d,%d,%d,%d,%d,%d",  &f[0], &f[1], &f[2], &f[3],
				    		&f[4], &f[5]) != 6)
	    {
		FUNC0("unknown response address format '%s', aborting\n", p);
		goto lend;
	    }
	    for (i=0; i < 6; i++)
		f[i] = f[i] & 0xff;

	    dataSocketAddress = lpwfs->socketAddress;
	    pAddr = (char *)&(dataSocketAddress.sin_addr.S_un.S_addr);
	    pPort = (char *)&(dataSocketAddress.sin_port);
            pAddr[0] = f[0];
            pAddr[1] = f[1];
            pAddr[2] = f[2];
            pAddr[3] = f[3];
	    pPort[0] = f[4];
	    pPort[1] = f[5];

            nsocket = FUNC8(AF_INET,SOCK_STREAM,0);
            if (nsocket == -1)
                goto lend;

	    if (FUNC7(nsocket, (struct sockaddr *)&dataSocketAddress, sizeof(dataSocketAddress)))
            {
	        FUNC0("can't connect passive FTP data port.\n");
                FUNC6(nsocket);
	        goto lend;
            }
	    lpwfs->pasvSocket = nsocket;
            bSuccess = TRUE;
	}
        else
            FUNC3(nResCode);
    }

lend:
    return bSuccess;
}