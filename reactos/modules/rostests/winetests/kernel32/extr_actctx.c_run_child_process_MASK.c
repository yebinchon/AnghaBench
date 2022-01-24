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
typedef  int /*<<< orphan*/  si ;
struct TYPE_6__ {scalar_t__ hProcess; scalar_t__ hThread; } ;
struct TYPE_5__ {int cb; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FILE_WRITE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  manifest1 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char***) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static void FUNC15(void)
{
    char cmdline[MAX_PATH];
    char path[MAX_PATH];
    char **argv;
    PROCESS_INFORMATION pi;
    STARTUPINFOA si = { 0 };
    HANDLE file;
    FILETIME now;
    BOOL ret;

    FUNC5(NULL, path, MAX_PATH);
    FUNC12(path, ".manifest");
    if(!FUNC8(path, manifest1, -1, NULL, NULL)) {
        FUNC10("Could not create manifest file\n");
        return;
    }

    si.cb = sizeof(si);
    FUNC13( &argv );
    /* Vista+ seems to cache presence of .manifest files. Change last modified
       date to defeat the cache */
    file = FUNC1(argv[0], FILE_WRITE_ATTRIBUTES, FILE_SHARE_READ | FILE_SHARE_WRITE,
                       NULL, OPEN_EXISTING, 0, NULL);
    if (file != INVALID_HANDLE_VALUE) {
        FUNC6(&now);
        FUNC7(file, NULL, NULL, &now);
        FUNC0(file);
    }
    FUNC11(cmdline, "\"%s\" %s manifest1", argv[0], argv[1]);
    ret = FUNC2(argv[0], cmdline, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
    FUNC9(ret, "Could not create process: %u\n", FUNC4());
    FUNC14( pi.hProcess );
    FUNC0(pi.hThread);
    FUNC0(pi.hProcess);
    FUNC3(path);
}