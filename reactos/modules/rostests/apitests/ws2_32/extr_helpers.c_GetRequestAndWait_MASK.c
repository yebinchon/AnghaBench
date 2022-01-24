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
struct fd_set {int dummy; } ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fd_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct fd_set*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_SEND ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fd_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 

int FUNC8(SOCKET sck)
{
    const char szGetRequest[] = "GET / HTTP/1.0\r\n\r\n";
    int iResult;
    struct fd_set readable;

    /* Send the GET request */
    FUNC2(FUNC5(sck, szGetRequest, FUNC7(szGetRequest), 0));
    FUNC3(iResult == FUNC7(szGetRequest), "iResult = %d\n", iResult);
#if 0 /* breaks windows too */
    /* Shutdown the SEND connection */
    SCKTEST(shutdown(sck, SD_SEND));
#endif
    /* Wait until we're ready to read */
    FUNC1(&readable);
    FUNC0(sck, &readable);

    FUNC2(FUNC4(0, &readable, NULL, NULL, NULL));
    
    return 1;
}