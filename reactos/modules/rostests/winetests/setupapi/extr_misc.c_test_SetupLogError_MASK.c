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
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_ACCESS_DENIED ; 
 int ERROR_FILE_INVALID ; 
 int ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  LogSevInformation ; 
 int /*<<< orphan*/  LogSevMaximum ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    BOOL ret;
    DWORD error;

    FUNC1(0xdeadbeef);
    ret = FUNC3("Test without opening\r\n", LogSevInformation);
    error = FUNC0();
    FUNC6(!ret, "SetupLogError succeeded\n");
    FUNC6(error == ERROR_FILE_INVALID, "got wrong error: %d\n", error);

    FUNC1(0xdeadbeef);
    ret = FUNC4(FALSE);
    if (!ret && FUNC0() == ERROR_ACCESS_DENIED)
    {
        FUNC7("SetupOpenLog() failed on insufficient permissions\n");
        return;
    }
    FUNC6(ret, "SetupOpenLog failed, error %d\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC3("Test with wrong log severity\r\n", LogSevMaximum);
    error = FUNC0();
    FUNC6(!ret, "SetupLogError succeeded\n");
    FUNC6(error == 0xdeadbeef, "got wrong error: %d\n", error);
    ret = FUNC3("Test without EOL", LogSevInformation);
    FUNC6(ret, "SetupLogError failed\n");

    FUNC1(0xdeadbeef);
    ret = FUNC3(NULL, LogSevInformation);
    FUNC6(ret || FUNC5(!ret && FUNC0() == ERROR_INVALID_PARAMETER /* Win Vista+ */),
        "SetupLogError failed: %08x\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC4(FALSE);
    FUNC6(ret, "SetupOpenLog failed, error %d\n", FUNC0());

    FUNC2();
}