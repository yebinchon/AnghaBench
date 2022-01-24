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
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ACTCTXW ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_SXS_CANT_GEN_ACTCTX ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(const char *manifest, BOOL fBOM)
{
    ACTCTXW actctx;
    HANDLE handle;
    WCHAR path[MAX_PATH];

    FUNC2( CP_ACP, 0, "bad.manifest", -1, path, MAX_PATH );
    FUNC4(&actctx, 0, sizeof(ACTCTXW));
    actctx.cbSize = sizeof(ACTCTXW);
    actctx.lpSource = path;

    FUNC3("bad.manifest", manifest, fBOM, FALSE);
    handle = FUNC6(&actctx);
    FUNC5(handle == INVALID_HANDLE_VALUE, "handle != INVALID_HANDLE_VALUE\n");
    FUNC5(FUNC1() == ERROR_SXS_CANT_GEN_ACTCTX, "GetLastError == %u\n", FUNC1());

    if (handle != INVALID_HANDLE_VALUE) FUNC7( handle );
    FUNC0("bad.manifest");
}