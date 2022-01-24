#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SendData ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  ICMP_ECHO_REPLY ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 unsigned long INADDR_NONE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ IP_BUF_TOO_SMALL ; 
 scalar_t__ IP_GENERAL_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,unsigned long,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 

__attribute__((used)) static
void
FUNC9(void)
{
    HANDLE hIcmp;
    unsigned long ipaddr = INADDR_NONE;
    DWORD bRet = 0, error = 0;
    char SendData[32] = "Data Buffer";
    PVOID ReplyBuffer;
    DWORD ReplySize = 0;

    FUNC4(0xDEADBEEF);
    hIcmp = FUNC2();
    if (hIcmp == INVALID_HANDLE_VALUE)
    {
        FUNC8("IcmpCreateFile failed unexpectedly: %lu\n", FUNC0());
        return;
    }

    ipaddr = 0x08080808; // 8.8.8.8
    ReplyBuffer = FUNC6(sizeof(ICMP_ECHO_REPLY) + sizeof(SendData));

    ReplySize = sizeof(ICMP_ECHO_REPLY);
    FUNC4(0xDEADBEEF);
    bRet = FUNC3(hIcmp, ipaddr, SendData, sizeof(SendData), 
        NULL, ReplyBuffer, ReplySize, 5000);

    FUNC7(!bRet, "IcmpSendEcho succeeded unexpectedly\n");
    error = FUNC0();
    FUNC7(error == IP_BUF_TOO_SMALL /* Win2003 */ ||
       error == IP_GENERAL_FAILURE /* Win10 */,
       "IcmpSendEcho returned unexpected error: %lu\n", error);

    ReplySize = sizeof(ICMP_ECHO_REPLY) + sizeof(SendData);
    FUNC4(0xDEADBEEF);
    bRet = FUNC3(hIcmp, ipaddr, SendData, sizeof(SendData), 
        NULL, ReplyBuffer, ReplySize, 5000);

    FUNC7(bRet, "IcmpSendEcho failed unexpectedly: %lu\n", FUNC0());

    FUNC5(ReplyBuffer);
    FUNC1(hIcmp);
}