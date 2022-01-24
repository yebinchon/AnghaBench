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
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_LEVEL ; 
 int ERROR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*,int*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int RPC_X_NULL_REF_POINTER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    DWORD   res;
    DWORD   level;
    LPBYTE  buffer;
    DWORD   cbBuf;
    DWORD   pcbNeeded;
    DWORD   pcReturned;

    /* valid levels are 1 and 2 */
    for(level = 0; level < 4; level++) {

        cbBuf = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC5(0xdeadbeef);
        res = FUNC0(NULL, level, NULL, 0, &cbBuf, &pcReturned);
        if (FUNC6(res, FUNC1())) return;

        /* use only a short test when testing an invalid level */
        if(!level || (level > 2)) {
            /* NT: ERROR_INVALID_LEVEL, 9x: success */
            FUNC7( (!res && (FUNC1() == ERROR_INVALID_LEVEL)) ||
                (res && (pcReturned == 0)),
                "(%d) returned %d with %d and 0x%08x (expected '0' with "
                "ERROR_INVALID_LEVEL or '!=0' and 0x0)\n",
                level, res, FUNC1(), pcReturned);
            continue;
        }        

        
        /* Level 2 is not supported on NT 3.x */
        if (!res && (FUNC1() == ERROR_INVALID_LEVEL)) {
            FUNC8("Level %d not supported\n", level);
            continue;
        }

        FUNC7((!res) && (FUNC1() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n", level, res, FUNC1());

        buffer = FUNC3(FUNC2(), 0, cbBuf *2);
        if (buffer == NULL) continue;

        pcbNeeded = 0xdeadbeef;
        FUNC5(0xdeadbeef);
        res = FUNC0(NULL, level, buffer, cbBuf, &pcbNeeded, &pcReturned);
        FUNC7(res, "(%d) returned %d with %d (expected '!=0')\n", level, res, FUNC1());
        FUNC7(pcbNeeded == cbBuf, "(%d) returned %d (expected %d)\n", level, pcbNeeded, cbBuf);
        /* ToDo: Compare the returned Data with the Registry / "win.ini",[Ports] here */

        pcbNeeded = 0xdeadbeef;
        pcReturned = 0xdeadbeef;
        FUNC5(0xdeadbeef);
        res = FUNC0(NULL, level, buffer, cbBuf+1, &pcbNeeded, &pcReturned);
        FUNC7(res, "(%d) returned %d with %d (expected '!=0')\n", level, res, FUNC1());
        FUNC7(pcbNeeded == cbBuf, "(%d) returned %d (expected %d)\n", level, pcbNeeded, cbBuf);

        pcbNeeded = 0xdeadbeef;
        FUNC5(0xdeadbeef);
        res = FUNC0(NULL, level, buffer, cbBuf-1, &pcbNeeded, &pcReturned);
        FUNC7( !res && (FUNC1() == ERROR_INSUFFICIENT_BUFFER),
            "(%d) returned %d with %d (expected '0' with "
            "ERROR_INSUFFICIENT_BUFFER)\n", level, res, FUNC1());
        FUNC7(pcbNeeded == cbBuf, "(%d) returned %d (expected %d)\n", level, pcbNeeded, cbBuf);

        /*
          Do not add this test:
          res = EnumPortsA(NULL, level, NULL, cbBuf, &pcbNeeded, &pcReturned);
          w2k+:  RPC_X_NULL_REF_POINTER 
          NT3.5: ERROR_INVALID_USER_BUFFER
          win9x: crash in winspool.drv
         */

        FUNC5(0xdeadbeef);
        res = FUNC0(NULL, level, buffer, cbBuf, NULL, &pcReturned);
        /* NT: RPC_X_NULL_REF_POINTER (1780),  9x: success */
        FUNC7( (!res && (FUNC1() == RPC_X_NULL_REF_POINTER) ) ||
            ( res && (FUNC1() == ERROR_SUCCESS) ),
            "(%d) returned %d with %d (expected '0' with "
            "RPC_X_NULL_REF_POINTER or '!=0' with NO_ERROR)\n",
            level, res, FUNC1());


        FUNC5(0xdeadbeef);
        res = FUNC0(NULL, level, buffer, cbBuf, &pcbNeeded, NULL);
        /* NT: RPC_X_NULL_REF_POINTER (1780),  9x: success */
        FUNC7( (!res && (FUNC1() == RPC_X_NULL_REF_POINTER) ) ||
            ( res && (FUNC1() == ERROR_SUCCESS) ),
            "(%d) returned %d with %d (expected '0' with "
            "RPC_X_NULL_REF_POINTER or '!=0' with NO_ERROR)\n",
            level, res, FUNC1());

        FUNC4(FUNC2(), 0, buffer);
    }
}