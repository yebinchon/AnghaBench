#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptest ;
struct TYPE_5__ {int iProtocol; int /*<<< orphan*/  dwServiceFlags1; int /*<<< orphan*/  iSocketType; int /*<<< orphan*/  iVersion; int /*<<< orphan*/  iAddressFamily; int /*<<< orphan*/  szProtocol; } ;
typedef  TYPE_1__ WSAPROTOCOL_INFOA ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int SOCKET_ERROR ; 
 scalar_t__ WSAEFAULT ; 
 scalar_t__ WSAENOBUFS ; 
 int FUNC3 (int*,TYPE_1__*,scalar_t__*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    INT ret, i, j, found;
    DWORD len = 0, error;
    WSAPROTOCOL_INFOA info, *buffer;
    INT ptest[] = {0xdead, IPPROTO_TCP, 0xcafe, IPPROTO_UDP, 0xbeef, 0};

    ret = FUNC3( NULL, NULL, &len );
    FUNC6( ret == SOCKET_ERROR, "WSAEnumProtocolsA() succeeded unexpectedly\n");
    error = FUNC4();
    FUNC6( error == WSAENOBUFS, "Expected 10055, received %d\n", error);

    len = 0;

    ret = FUNC3( NULL, &info, &len );
    FUNC6( ret == SOCKET_ERROR, "WSAEnumProtocolsA() succeeded unexpectedly\n");
    error = FUNC4();
    FUNC6( error == WSAENOBUFS, "Expected 10055, received %d\n", error);

    buffer = FUNC1( FUNC0(), 0, len );

    if (buffer)
    {
        ret = FUNC3( NULL, buffer, &len );
        FUNC6( ret != SOCKET_ERROR, "WSAEnumProtocolsA() failed unexpectedly: %d\n",
            FUNC4() );

        for (i = 0; i < ret; i++)
        {
            FUNC6( FUNC7( buffer[i].szProtocol ), "No protocol name found\n" );
            FUNC8( buffer[i].iAddressFamily, buffer[i].iVersion,
                                buffer[i].iSocketType, buffer[i].iProtocol,
                                buffer[i].dwServiceFlags1);
        }

        FUNC2( FUNC0(), 0, buffer );
    }

    /* Test invalid protocols in the list */
    ret = FUNC3( ptest, NULL, &len );
    FUNC6( ret == SOCKET_ERROR, "WSAEnumProtocolsA() succeeded unexpectedly\n");
    error = FUNC4();
    FUNC6( error == WSAENOBUFS || FUNC5(error == WSAEFAULT) /* NT4 */,
       "Expected 10055, received %d\n", error);

    buffer = FUNC1( FUNC0(), 0, len );

    if (buffer)
    {
        ret = FUNC3( ptest, buffer, &len );
        FUNC6( ret != SOCKET_ERROR, "WSAEnumProtocolsA() failed unexpectedly: %d\n",
            FUNC4() );
        FUNC6( ret >= 2, "Expected at least 2 items, received %d\n", ret);

        for (i = found = 0; i < ret; i++)
            for (j = 0; j < sizeof(ptest) / sizeof(ptest[0]); j++)
                if (buffer[i].iProtocol == ptest[j])
                {
                    found |= 1 << j;
                    break;
                }
        FUNC6(found == 0x0A, "Expected 2 bits represented as 0xA, received 0x%x\n", found);

        FUNC2( FUNC0(), 0, buffer );
    }
}