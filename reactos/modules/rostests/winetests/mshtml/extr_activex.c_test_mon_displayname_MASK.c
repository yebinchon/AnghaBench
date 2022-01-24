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
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ MKSYS_URLMONIKER ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(IMoniker *mon, const char *exname, const char *broken_name)
{
    LPOLESTR display_name;
    DWORD mksys;
    HRESULT hres;

    hres = FUNC1(mon, NULL, NULL, &display_name);
    FUNC4(hres == S_OK, "GetDisplayName failed: %08x\n", hres);
    FUNC4(!FUNC5(display_name, exname) || FUNC3(broken_name && !FUNC5(display_name, broken_name)),
        "display_name = %s\n", FUNC6(display_name));
    FUNC0(display_name);

    hres = FUNC2(mon, &mksys);
    FUNC4(hres == S_OK, "IsSystemMoniker failed: %08x\n", hres);
    FUNC4(mksys == MKSYS_URLMONIKER, "mksys = %d\n", mksys);
}