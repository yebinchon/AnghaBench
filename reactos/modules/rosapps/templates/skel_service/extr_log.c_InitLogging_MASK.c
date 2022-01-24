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
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int LOG_ERROR ; 
 int LOG_EVENTLOG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  hLogFile ; 
 int /*<<< orphan*/  lpLogFileName ; 

VOID
FUNC7()
{
    WCHAR wcBom = 0xFEFF;

    FUNC1(lpLogFileName);

#ifdef _UNICODE
    if (OpenLogFile())
    {
        DWORD bytesWritten;

        WriteFile(hLogFile,
                  &wcBom,
                  sizeof(WCHAR),
                  &bytesWritten,
                  NULL);
        if (bytesWritten == 0)
        {
            LogToEventLog(_T("Failed to write to log file"),
                          GetLastError(),
                          0,
                          LOG_EVENTLOG | LOG_ERROR);
        }

        CloseHandle(hLogFile);
    }
#endif
}