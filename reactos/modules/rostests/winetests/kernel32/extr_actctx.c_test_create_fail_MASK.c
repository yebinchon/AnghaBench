#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int cbSize; int /*<<< orphan*/ * lpSource; } ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ ACTCTXW ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  manifest1 ; 
 int /*<<< orphan*/  manifest2 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * wrong_depmanifest1 ; 
 int /*<<< orphan*/  wrong_manifest1 ; 
 int /*<<< orphan*/  wrong_manifest10 ; 
 int /*<<< orphan*/  wrong_manifest2 ; 
 int /*<<< orphan*/  wrong_manifest3 ; 
 int /*<<< orphan*/  wrong_manifest4 ; 
 int /*<<< orphan*/  wrong_manifest5 ; 
 int /*<<< orphan*/  wrong_manifest6 ; 
 int /*<<< orphan*/  wrong_manifest7 ; 
 int /*<<< orphan*/  wrong_manifest8 ; 
 int /*<<< orphan*/  wrong_manifest9 ; 

__attribute__((used)) static void FUNC8(void)
{
    ACTCTXW actctx;
    HANDLE handle;
    WCHAR path[MAX_PATH];

    FUNC1( CP_ACP, 0, "nonexistent.manifest", -1, path, MAX_PATH );
    FUNC2(&actctx, 0, sizeof(ACTCTXW));
    actctx.cbSize = sizeof(ACTCTXW);
    actctx.lpSource = path;

    handle = FUNC4(&actctx);
    FUNC3(handle == INVALID_HANDLE_VALUE, "handle != INVALID_HANDLE_VALUE\n");
    FUNC3(FUNC0() == ERROR_FILE_NOT_FOUND, "GetLastError == %u\n", FUNC0());

    FUNC7("wrong_manifest1\n");
    FUNC5(wrong_manifest1, NULL, 0, FALSE);
    FUNC7("wrong_manifest2\n");
    FUNC5(wrong_manifest2, NULL, 0, FALSE);
    FUNC7("wrong_manifest3\n");
    FUNC5(wrong_manifest3, NULL, 1, FALSE);
    FUNC7("wrong_manifest4\n");
    FUNC5(wrong_manifest4, NULL, 1, FALSE);
    FUNC7("wrong_manifest5\n");
    FUNC5(wrong_manifest5, NULL, 0, FALSE);
    FUNC7("wrong_manifest6\n");
    FUNC5(wrong_manifest6, NULL, 0, FALSE);
    FUNC7("wrong_manifest7\n");
    FUNC5(wrong_manifest7, NULL, 1, FALSE);
    FUNC7("wrong_manifest8\n");
    FUNC5(wrong_manifest8, NULL, 0, FALSE);
    FUNC7("wrong_manifest9\n");
    FUNC5(wrong_manifest9, NULL, 0, TRUE /* WinXP */);
    FUNC7("wrong_manifest10\n");
    FUNC5(wrong_manifest10, NULL, 0, TRUE /* WinXP */);
    FUNC7("UTF-16 manifest1 without BOM\n");
    FUNC6(manifest1, FALSE );
    FUNC7("manifest2\n");
    FUNC5(manifest2, NULL, 0, FALSE);
    FUNC7("manifest2+depmanifest1\n");
    FUNC5(manifest2, wrong_depmanifest1, 0, FALSE);
}