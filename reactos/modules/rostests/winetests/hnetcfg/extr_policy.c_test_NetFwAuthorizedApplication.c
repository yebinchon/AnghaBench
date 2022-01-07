
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int netpath ;
typedef int WCHAR ;
struct TYPE_3__ {int * lpUniversalName; } ;
typedef TYPE_1__ UNIVERSAL_NAME_INFOW ;
typedef int INetFwAuthorizedApplication ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int * BSTR ;


 int ARRAY_SIZE (int *) ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_NetFwAuthorizedApplication ;
 int CoCreateInstance (int *,int *,int,int *,void**) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_PATH_NOT_FOUND ;
 int E_INVALIDARG ;
 int E_POINTER ;
 int GetFullPathNameW (int *,int ,int *,int *) ;
 int GetLastError () ;
 int GetLongPathNameW (int *,int *,int ) ;
 int GetModuleFileNameW (int *,int *,int ) ;
 int HRESULT_FROM_WIN32 (int ) ;
 int IID_INetFwAuthorizedApplication ;
 int INetFwAuthorizedApplication_Release (int *) ;
 int INetFwAuthorizedApplication_get_ProcessImageFileName (int *,int **) ;
 int INetFwAuthorizedApplication_put_ProcessImageFileName (int *,int *) ;
 int MAX_PATH ;
 int NO_ERROR ;
 int S_OK ;
 int * SysAllocString (int *) ;
 int SysFreeString (int *) ;
 int UNIVERSAL_NAME_INFO_LEVEL ;
 int WNetGetUniversalNameW (int *,int ,TYPE_1__*,int*) ;
 int lstrcmpW (int *,int *) ;
 int lstrcpyW (int *,int *) ;
 int ok (int,char*,int ,...) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_NetFwAuthorizedApplication(void)
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

    hr = CoCreateInstance(&CLSID_NetFwAuthorizedApplication, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_INetFwAuthorizedApplication, (void**)&app);
    ok(hr == S_OK, "got: %08x\n", hr);

    hr = GetModuleFileNameW(((void*)0), image, ARRAY_SIZE(image));
    ok(hr, "GetModuleFileName failed: %u\n", GetLastError());

    hr = INetFwAuthorizedApplication_get_ProcessImageFileName(app, ((void*)0));
    ok(hr == E_POINTER, "got: %08x\n", hr);

    hr = INetFwAuthorizedApplication_get_ProcessImageFileName(app, &bstr);
    ok(hr == S_OK || hr == HRESULT_FROM_WIN32(ERROR_NOT_ENOUGH_MEMORY), "got: %08x\n", hr);
    ok(!bstr, "got: %s\n", wine_dbgstr_w(bstr));

    hr = INetFwAuthorizedApplication_put_ProcessImageFileName(app, ((void*)0));
    ok(hr == E_INVALIDARG || hr == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND), "got: %08x\n", hr);

    hr = INetFwAuthorizedApplication_put_ProcessImageFileName(app, empty);
    ok(hr == E_INVALIDARG || hr == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND), "got: %08x\n", hr);

    bstr = SysAllocString(image);
    hr = INetFwAuthorizedApplication_put_ProcessImageFileName(app, bstr);
    ok(hr == S_OK, "got: %08x\n", hr);
    SysFreeString(bstr);

    GetFullPathNameW(image, ARRAY_SIZE(fullpath), fullpath, ((void*)0));
    GetLongPathNameW(fullpath, fullpath, ARRAY_SIZE(fullpath));

    info = (UNIVERSAL_NAME_INFOW *)&netpath;
    sz = sizeof(netpath);
    hr = WNetGetUniversalNameW(image, UNIVERSAL_NAME_INFO_LEVEL, info, &sz);
    if (hr != NO_ERROR)
    {
        info->lpUniversalName = netpath + sizeof(*info)/sizeof(WCHAR);
        lstrcpyW(info->lpUniversalName, fullpath);
    }

    hr = INetFwAuthorizedApplication_get_ProcessImageFileName(app, &bstr);
    ok(hr == S_OK, "got: %08x\n", hr);
    ok(!lstrcmpW(bstr,info->lpUniversalName), "expected %s, got %s\n",
        wine_dbgstr_w(info->lpUniversalName), wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    INetFwAuthorizedApplication_Release(app);
}
