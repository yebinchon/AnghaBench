#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  si ;
typedef  enum process_result { ____Placeholder_process_result } process_result ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_7__ {int /*<<< orphan*/ * hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int CREATE_NO_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int PROCESS_ERROR_GENERIC ; 
 int PROCESS_ERROR_MISSING_BINARY ; 
 int PROCESS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,char const* const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

enum process_result
FUNC7(const char *path, const char *const argv[], HANDLE *handle) {
    STARTUPINFOW si;
    PROCESS_INFORMATION pi;
    FUNC5(&si, 0, sizeof(si));
    si.cb = sizeof(si);

    char cmd[256];
    if (FUNC4(cmd, sizeof(cmd), argv)) {
        *handle = NULL;
        return PROCESS_ERROR_GENERIC;
    }

    wchar_t *wide = FUNC6(cmd);
    if (!wide) {
        FUNC2("Could not allocate wide char string");
        return PROCESS_ERROR_GENERIC;
    }

#ifdef WINDOWS_NOCONSOLE
    int flags = CREATE_NO_WINDOW;
#else
    int flags = 0;
#endif
    if (!FUNC0(NULL, wide, NULL, NULL, FALSE, flags, NULL, NULL, &si,
                        &pi)) {
        FUNC3(wide);
        *handle = NULL;
        if (FUNC1() == ERROR_FILE_NOT_FOUND) {
            return PROCESS_ERROR_MISSING_BINARY;
        }
        return PROCESS_ERROR_GENERIC;
    }

    FUNC3(wide);
    *handle = pi.hProcess;
    return PROCESS_SUCCESS;
}