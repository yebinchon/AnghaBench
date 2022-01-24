#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  to ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; } ;
struct TYPE_5__ {TYPE_3__ member_0; } ;
struct TYPE_4__ {TYPE_2__ member_0; } ;
struct sockaddr_in {int member_1; TYPE_1__ member_2; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  WSAPROTOCOL_INFOW ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10()
{
    char szBuf[10];
    int err;
    SOCKET sck, dup_sck;
    WSAPROTOCOL_INFOW ProtocolInfo;
    struct sockaddr_in to = { AF_INET, 2222, {{{ 0x7f, 0x00, 0x00, 0x01 }}} };

    /* Create the socket */
    sck = FUNC9(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if(sck == INVALID_SOCKET)
    {
        FUNC8("socket failed %d. Aborting test.\n", FUNC2());
        return;
    }
    
    err = FUNC7(sck, szBuf, FUNC4(szBuf), 0, (struct sockaddr *)&to, sizeof(to));
    FUNC6(err == FUNC4(szBuf), "sendto err = %d %d\n", err, FUNC2());

    err = FUNC1(sck, FUNC0(), &ProtocolInfo);
    FUNC6(err == 0, "WSADuplicateSocketW err = %d %d\n", err, FUNC2());

    dup_sck = FUNC3(0, 0, 0, &ProtocolInfo, 0, 0);
    if (dup_sck == INVALID_SOCKET)
    {
        FUNC8("WSASocketW failed %d. Aborting test.\n", FUNC2());
        FUNC5(sck);
        return;
    }

    err = FUNC7(dup_sck, szBuf, FUNC4(szBuf), 0, (struct sockaddr *)&to, sizeof(to));
    FUNC6(err == FUNC4(szBuf), "sendto err = %d %d\n", err, FUNC2());

    err = FUNC5(sck);
    FUNC6(err == 0, "closesocket sck err = %d %d\n", err, FUNC2());

    err = FUNC7(dup_sck, szBuf, FUNC4(szBuf), 0, (struct sockaddr *)&to, sizeof(to));
    FUNC6(err == FUNC4(szBuf), "sendto err = %d %d\n", err, FUNC2());

    err = FUNC5(dup_sck);
    FUNC6(err == 0, "closesocket dup_sck err = %d %d\n", err, FUNC2());
    return;
}