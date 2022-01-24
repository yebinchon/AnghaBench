#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int MAX_PATH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  pCoInternetIsFeatureEnabled ; 
 int /*<<< orphan*/  pCoInternetSetFeatureEnabled ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  szFeatureControlKey ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char***) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void) {
    HKEY key;
    DWORD res;

    if(!pCoInternetIsFeatureEnabled || !pCoInternetSetFeatureEnabled) {
        FUNC12("Skipping internet feature tests, IE is too old\n");
        return;
    }

    /* IE10 takes FeatureControl key into account only if it's available upon process start. */
    res = FUNC5(HKEY_CURRENT_USER, szFeatureControlKey, &key);
    if(res != ERROR_SUCCESS) {
        PROCESS_INFORMATION pi;
        STARTUPINFOA si = { 0 };
        char cmdline[MAX_PATH];
        char **argv;
        BOOL ret;

        res = FUNC3(HKEY_CURRENT_USER, szFeatureControlKey, &key);
        FUNC6(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);

        FUNC11("Running features tests in a separated process.\n");

        FUNC13( &argv );
        FUNC7(cmdline, "\"%s\" %s internet_features", argv[0], argv[1]);
        ret = FUNC1(argv[0], cmdline, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
        FUNC6(ret, "Could not create process: %u\n", FUNC2());
        FUNC14( pi.hProcess );
        FUNC0(pi.hThread);
        FUNC0(pi.hProcess);

        FUNC4(HKEY_CURRENT_USER, szFeatureControlKey);
        return;
    }

    FUNC10();
    FUNC8();
    FUNC9();
}