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
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHlinkBrowseContext ;
typedef  int /*<<< orphan*/  IHlink ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ CO_E_ALREADYINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  HLID_CURRENT ; 
 int /*<<< orphan*/  HLID_NEXT ; 
 int /*<<< orphan*/  HLID_PREVIOUS ; 
 int /*<<< orphan*/  HLINKGETREF_DEFAULT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHlinkBrowseContext ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    IHlinkBrowseContext *bc;
    IHlink *found_hlink;
    IMoniker *dummy, *found_moniker;
    IBindCtx *bindctx;
    WCHAR one[] = {'1',0};
    WCHAR five[] = {'5',0};
    WCHAR *found_name, *exp_name;
    HRESULT hres;

    hres = FUNC1(0, &bindctx);
    FUNC13(hres == S_OK, "CreateBindCtx failed: 0x%08x\n", hres);

    hres = FUNC2(one, five, &dummy);
    FUNC13(hres == S_OK, "CreateItemMoniker failed: 0x%08x\n", hres);

    hres = FUNC10(dummy, bindctx, NULL, &exp_name);
    FUNC13(hres == S_OK, "GetDisplayName failed: 0x%08x\n", hres);

    hres = FUNC3(NULL, &IID_IHlinkBrowseContext, (void**)&bc);
    FUNC13(hres == S_OK, "HlinkCreateBrowseContext failed: 0x%08x\n", hres);

    hres = FUNC7(bc, dummy, one, NULL);
    FUNC13(hres == S_OK, "SetInitialHlink failed: 0x%08x\n", hres);

    hres = FUNC7(bc, dummy, one, NULL);
    FUNC13(hres == CO_E_ALREADYINITIALIZED, "got 0x%08x\n", hres);

    hres = FUNC7(bc, dummy, five, NULL);
    FUNC13(hres == CO_E_ALREADYINITIALIZED, "got 0x%08x\n", hres);

    /* there's only one */
    hres = FUNC5(bc, HLID_PREVIOUS, &found_hlink);
    FUNC13(hres == E_FAIL, "got 0x%08x\n", hres);

    hres = FUNC5(bc, HLID_NEXT, &found_hlink);
    FUNC13(hres == E_FAIL, "got 0x%08x\n", hres);

    hres = FUNC5(bc, HLID_CURRENT, &found_hlink);
    FUNC13(hres == S_OK, "GetHlink failed: 0x%08x\n", hres);

    hres = FUNC8(found_hlink, HLINKGETREF_DEFAULT, &found_moniker, NULL);
    FUNC13(hres == S_OK, "GetMonikerReference failed: 0x%08x\n", hres);

    hres = FUNC10(found_moniker, bindctx, NULL, &found_name);
    FUNC13(hres == S_OK, "GetDisplayName failed: 0x%08x\n", hres);
    FUNC13(!FUNC12(found_name, exp_name), "Found display name should have been %s, was: %s\n", FUNC14(exp_name), FUNC14(found_name));

    FUNC0(exp_name);
    FUNC0(found_name);

    FUNC4(bindctx);
    FUNC11(found_moniker);
    FUNC9(found_hlink);
    FUNC6(bc);
    FUNC11(dummy);
}