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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ CHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  defaultspooldirectory ; 
 char* does_not_exist ; 
 int FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    HANDLE hprn = 0;
    DWORD res;
    DWORD type;
    CHAR  buffer[MAX_PATH + 1];
    DWORD needed;
    DWORD len;

    /* not present before w2k */
    if (!&pGetPrinterDataExA) {
        FUNC9("GetPrinterDataEx not found\n");
        return;
    }

    /* ToDo: test parameter validation, test with the default printer */

    FUNC3(0xdeadbeef);
    res = FUNC2(NULL, &hprn, NULL);
    if (!res)
    {
        FUNC9("Unable to open the printserver: %d\n", FUNC1());
        return;
    }

    /* keyname is ignored, when hprn is a HANDLE for a printserver */
    FUNC6(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    FUNC3(0xdeadbeef);
    res = FUNC8(hprn, NULL, defaultspooldirectory, &type,
                             (LPBYTE) buffer, sizeof(buffer), &needed);

    len = FUNC5(buffer) + sizeof(CHAR);
    /* NT4 and w2k require a buffer to save the UNICODE result also for the ANSI function */
    FUNC7( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);

    FUNC6(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    FUNC3(0xdeadbeef);
    res = FUNC8(hprn, "", defaultspooldirectory, &type,
                             (LPBYTE) buffer, sizeof(buffer), &needed);
    len = FUNC5(buffer) + sizeof(CHAR);
    FUNC7( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);

    FUNC6(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    FUNC3(0xdeadbeef);
    /* Wine uses GetPrinterDataEx with "PrinterDriverData" to implement GetPrinterData */
    res = FUNC8(hprn, "PrinterDriverData", defaultspooldirectory,
                             &type, (LPBYTE) buffer, sizeof(buffer), &needed);
    len = FUNC5(buffer) + sizeof(CHAR);
    FUNC7( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);


    FUNC6(buffer, '#', sizeof(buffer));
    buffer[MAX_PATH] = 0;
    type = 0xdeadbeef;
    needed = 0xdeadbeef;
    FUNC3(0xdeadbeef);
    res = FUNC8(hprn, does_not_exist, defaultspooldirectory, &type,
                             (LPBYTE) buffer, sizeof(buffer), &needed);
    len = FUNC5(buffer) + sizeof(CHAR);
    FUNC7( !res && (type == REG_SZ) && ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\n",
        res, type, needed, buffer, len);

    needed = 0xdeadbeef;
    FUNC3(0xdeadbeef);
    /* vista and w2k8 have a bug in GetPrinterDataEx:
       the current LastError value is returned as result */
    res = FUNC8(hprn, NULL, defaultspooldirectory, NULL, NULL, 0, &needed);
    FUNC7( ((res == ERROR_MORE_DATA) || FUNC4(res == 0xdeadbeef)) &&
        ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, needed: %d (expected ERROR_MORE_DATA and %d)\n", res, needed, len);

    needed = 0xdeadbeef;
    FUNC3(0xdeaddead);
    res = FUNC8(hprn, NULL, defaultspooldirectory, NULL, NULL, 0, &needed);
    FUNC7( ((res == ERROR_MORE_DATA) || FUNC4(res == 0xdeaddead)) &&
        ((needed == len) || (needed == (len * sizeof(WCHAR)))),
        "got %d, needed: %d (expected ERROR_MORE_DATA and %d)\n", res, needed, len);

    FUNC3(0xdeadbeef);
    res = FUNC0(hprn);
    FUNC7(res, "ClosePrinter error %d\n", FUNC1());
}