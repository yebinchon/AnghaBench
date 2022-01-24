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
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * emptyW ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int,scalar_t__,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/ * server_does_not_existW ; 

__attribute__((used)) static void FUNC7(void)
{
    DWORD   res;
    DWORD   level;
    LPBYTE  buffer;
    DWORD   cbBuf;
    DWORD   pcbNeeded;
    DWORD   pcReturned;

    if (!&pEnumPorts) return;

    /* valid levels are 1 and 2 */
    for(level = 0; level < 4; level++) {

        cbBuf = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC4(0xdeadbeef);
        res = FUNC6(NULL, level, NULL, 0, &cbBuf, &pcReturned);

        /* use only a short test, when we test with an invalid level */
        if(!level || (level > 2)) {
            /* NT4 fails with ERROR_INVALID_LEVEL (as expected)
               XP succeeds with ERROR_SUCCESS () */
            FUNC5( (cbBuf == 0) && (pcReturned == 0),
                "(%d) returned %d with %u and %d, %d (expected 0, 0)\n",
                level, res, FUNC0(), cbBuf, pcReturned);
            continue;
        }        

        FUNC5( !res && (FUNC0() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %u and %d, %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n",
            level, res, FUNC0(), cbBuf, pcReturned);

        buffer = FUNC2(FUNC1(), 0, cbBuf * 2);
        if (buffer == NULL) continue;

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC4(0xdeadbeef);
        res = FUNC6(NULL, level, buffer, cbBuf, &pcbNeeded, &pcReturned);
        FUNC5( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, FUNC0(), pcbNeeded, pcReturned);
        /* We can compare the returned Data with the Registry / "win.ini",[Ports] here */

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC4(0xdeadbeef);
        res = FUNC6(NULL, level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        FUNC5( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, FUNC0(), pcbNeeded, pcReturned);

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC4(0xdeadbeef);
        res = FUNC6(NULL, level, buffer, cbBuf-1, &pcbNeeded, &pcReturned);
        FUNC5( !res && (FUNC0() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %u and %d, %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n",
            level, res, FUNC0(), pcbNeeded, pcReturned);

        if (0)
        {
            /* The following tests crash this app with native localmon/localspl */
            FUNC6(NULL, level, NULL, cbBuf, &pcbNeeded, &pcReturned);
            FUNC6(NULL, level, buffer, cbBuf, NULL, &pcReturned);
            FUNC6(NULL, level, buffer, cbBuf, &pcbNeeded, NULL);
        }

        /* The Servername is ignored */
        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC4(0xdeadbeef);
        res = FUNC6(emptyW, level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        FUNC5( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, FUNC0(), pcbNeeded, pcReturned);

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC4(0xdeadbeef);
        res = FUNC6(server_does_not_existW, level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        FUNC5( res, "(%d) returned %d with %u and %d, %d (expected '!= 0')\n",
            level, res, FUNC0(), pcbNeeded, pcReturned);

        FUNC3(FUNC1(), 0, buffer);
    }
}