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
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  SOCKET ;
typedef  scalar_t__ LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

int FUNC14()
{
    LPSTR pszBuf;
    int iResult;
    SOCKET sck;
    ULONG BytesAvailable;
    ULONG BytesToRead;
    WSADATA wdata;

    /* Start up Winsock */
    iResult = FUNC9(FUNC6(2, 2), &wdata);
    FUNC12(iResult == 0, "WSAStartup failed. iResult = %d\n", iResult);

    /* If we call ioctlsocket without a socket, it should return with an error and do nothing. */
    BytesAvailable = 0xdeadbeef;
    iResult = FUNC11(0, FIONREAD, &BytesAvailable);
    FUNC12(iResult == SOCKET_ERROR, "iResult = %d\n", iResult);
    FUNC12(BytesAvailable == 0xdeadbeef, "BytesAvailable = %ld\n", BytesAvailable);

    /* Create the socket */
    if (!FUNC1(&sck))
    {
        FUNC12(0, "CreateSocket failed. Aborting test.\n");
        return 0;
    }

    /* Now we can pass at least a socket, but we have no connection yet. The function should return 0. */
    BytesAvailable = 0xdeadbeef;
    iResult = FUNC11(sck, FIONREAD, &BytesAvailable);
    FUNC12(iResult == 0, "iResult = %d\n", iResult);
    FUNC12(BytesAvailable == 0, "BytesAvailable = %ld\n", BytesAvailable);

    /* Connect to "www.reactos.org" */
    if (!FUNC0(sck))
    {
        FUNC12(0, "ConnectToReactOSWebsite failed. Aborting test.\n");
        return 0;
    }

    /* Even with a connection, there shouldn't be any bytes available. */
    iResult = FUNC11(sck, FIONREAD, &BytesAvailable);
    FUNC12(iResult == 0, "iResult = %d\n", iResult);
    FUNC12(BytesAvailable == 0, "BytesAvailable = %ld\n", BytesAvailable);

    /* Send the GET request */
    if (!FUNC3(sck))
    {
        FUNC12(0, "GetRequestAndWait failed. Aborting test.\n");
        return 0;
    }

    /* Try ioctlsocket with FIONREAD. There should be bytes available now. */
    FUNC7(FUNC11(sck, FIONREAD, &BytesAvailable));
    FUNC12(BytesAvailable != 0, "BytesAvailable = %ld\n", BytesAvailable);

    /* Get half of the data */
    BytesToRead = BytesAvailable / 2;
    pszBuf = (LPSTR) FUNC4(FUNC2(), 0, BytesToRead);
    FUNC7(FUNC13(sck, pszBuf, BytesToRead, 0));
    FUNC5(FUNC2(), 0, pszBuf);

    BytesToRead = BytesAvailable - BytesToRead;

    /* Now try ioctlsocket again. BytesAvailable should be at the value saved in BytesToRead now. */
    FUNC7(FUNC11(sck, FIONREAD, &BytesAvailable));
    FUNC12(BytesAvailable == BytesToRead, "BytesAvailable = %ld\n", BytesAvailable);

    /* Read those bytes */
    pszBuf = (LPSTR) FUNC4(FUNC2(), 0, BytesToRead);
    FUNC7(FUNC13(sck, pszBuf, BytesToRead, 0));
    FUNC5(FUNC2(), 0, pszBuf);

    /* Try it for the last time. BytesAvailable should be at 0 now. */
    FUNC7(FUNC11(sck, FIONREAD, &BytesAvailable));
    FUNC12(BytesAvailable == 0, "BytesAvailable = %ld\n", BytesAvailable);

    FUNC10(sck);
    FUNC8();
    return 1;
}