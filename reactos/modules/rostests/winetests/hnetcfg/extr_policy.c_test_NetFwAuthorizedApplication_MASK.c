#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netpath ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ * lpUniversalName; } ;
typedef  TYPE_1__ UNIVERSAL_NAME_INFOW ;
typedef  int /*<<< orphan*/  INetFwAuthorizedApplication ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_NetFwAuthorizedApplication ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_INetFwAuthorizedApplication ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NO_ERROR ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UNIVERSAL_NAME_INFO_LEVEL ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(void)
{
    INetFwAuthorizedApplication *app;
    static WCHAR empty[] = {0};
    UNIVERSAL_NAME_INFOW *info;
    WCHAR fullpath[MAX_PATH];
    WCHAR netpath[MAX_PATH];
    WCHAR image[MAX_PATH];
    HRESULT hr;
    BSTR bstr;
    DWORD sz;

    hr = FUNC1(&CLSID_NetFwAuthorizedApplication, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_INetFwAuthorizedApplication, (void**)&app);
    FUNC15(hr == S_OK, "got: %08x\n", hr);

    hr = FUNC5(NULL, image, FUNC0(image));
    FUNC15(hr, "GetModuleFileName failed: %u\n", FUNC3());

    hr = FUNC8(app, NULL);
    FUNC15(hr == E_POINTER, "got: %08x\n", hr);

    hr = FUNC8(app, &bstr);
    FUNC15(hr == S_OK || hr == FUNC6(ERROR_NOT_ENOUGH_MEMORY), "got: %08x\n", hr);
    FUNC15(!bstr, "got: %s\n",  FUNC16(bstr));

    hr = FUNC9(app, NULL);
    FUNC15(hr == E_INVALIDARG || hr == FUNC6(ERROR_PATH_NOT_FOUND), "got: %08x\n", hr);

    hr = FUNC9(app, empty);
    FUNC15(hr == E_INVALIDARG || hr == FUNC6(ERROR_PATH_NOT_FOUND), "got: %08x\n", hr);

    bstr = FUNC10(image);
    hr = FUNC9(app, bstr);
    FUNC15(hr == S_OK, "got: %08x\n", hr);
    FUNC11(bstr);

    FUNC2(image, FUNC0(fullpath), fullpath, NULL);
    FUNC4(fullpath, fullpath, FUNC0(fullpath));

    info = (UNIVERSAL_NAME_INFOW *)&netpath;
    sz = sizeof(netpath);
    hr = FUNC12(image, UNIVERSAL_NAME_INFO_LEVEL, info, &sz);
    if (hr != NO_ERROR)
    {
        info->lpUniversalName = netpath + sizeof(*info)/sizeof(WCHAR);
        FUNC14(info->lpUniversalName, fullpath);
    }

    hr = FUNC8(app, &bstr);
    FUNC15(hr == S_OK, "got: %08x\n", hr);
    FUNC15(!FUNC13(bstr,info->lpUniversalName), "expected %s, got %s\n",
        FUNC16(info->lpUniversalName), FUNC16(bstr));
    FUNC11(bstr);

    FUNC7(app);
}