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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHlinkBrowseContext ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IHlinkBrowseContext ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ MK_E_UNAVAILABLE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  Unknown ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    IHlinkBrowseContext *bc;
    IMoniker *dummy;
    IUnknown *unk;
    WCHAR one[] = {'1',0};
    WCHAR five[] = {'5',0};
    DWORD cookie;
    HRESULT hres;

    hres = FUNC0(one, five, &dummy);
    FUNC7(hres == S_OK, "CreateItemMoniker() failed: 0x%08x\n", hres);

    hres = FUNC1(NULL, &IID_IHlinkBrowseContext, (void **)&bc);
    FUNC7(hres == S_OK, "HlinkCreateBrowseContext() failed: 0x%08x\n", hres);

    hres = FUNC2(bc, dummy, FALSE, &unk);
    FUNC7(hres == MK_E_UNAVAILABLE, "expected MK_E_UNAVAILABLE, got 0x%08x\n", hres);

    hres = FUNC3(bc, 0, &Unknown, dummy, &cookie);
    FUNC7(hres == S_OK, "Register() failed: 0x%08x\n", hres);

    hres = FUNC2(bc, dummy, FALSE, &unk);
    FUNC7(hres == S_OK, "GetObject() failed: 0x%08x\n", hres);
    FUNC7(unk == &Unknown, "wrong object returned\n");

    hres = FUNC5(bc, cookie);
    FUNC7(hres == S_OK, "Revoke() failed: 0x%08x\n", hres);

    hres = FUNC2(bc, dummy, FALSE, &unk);
    FUNC7(hres == MK_E_UNAVAILABLE, "expected MK_E_UNAVAILABLE, got 0x%08x\n", hres);

    FUNC4(bc);
    FUNC6(dummy);
}