
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IUnknown ;
typedef int IEnumUnknown ;
typedef int ICLRRuntimeInfo ;
typedef int HRESULT ;
typedef int DWORD ;


 int ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ FAILED (int) ;
 int HRESULT_FROM_WIN32 (int ) ;
 int ICLRMetaHost_EnumerateInstalledRuntimes (int ,int **) ;
 int ICLRRuntimeInfo_GetVersionString (int *,int *,int*) ;
 int ICLRRuntimeInfo_Release (int *) ;
 int IEnumUnknown_Next (int *,int,int **,int*) ;
 int IEnumUnknown_Release (int *) ;
 int IID_ICLRRuntimeInfo ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int MAX_PATH ;
 int S_FALSE ;
 int S_OK ;
 int metahost ;
 int ok (int,char*,int) ;
 int trace (char*,int ) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_enumruntimes(void)
{
    IEnumUnknown *runtime_enum;
    IUnknown *unk;
    DWORD count;
    ICLRRuntimeInfo *runtime_info;
    HRESULT hr;
    WCHAR buf[MAX_PATH];

    hr = ICLRMetaHost_EnumerateInstalledRuntimes(metahost, &runtime_enum);
    ok(hr == S_OK, "EnumerateInstalledRuntimes returned %x\n", hr);
    if (FAILED(hr)) return;

    while ((hr = IEnumUnknown_Next(runtime_enum, 1, &unk, &count)) == S_OK)
    {
        hr = IUnknown_QueryInterface(unk, &IID_ICLRRuntimeInfo, (void**)&runtime_info);
        ok(hr == S_OK, "QueryInterface returned %x\n", hr);

        count = 1;
        hr = ICLRRuntimeInfo_GetVersionString(runtime_info, buf, &count);
        ok(hr == HRESULT_FROM_WIN32(ERROR_INSUFFICIENT_BUFFER), "GetVersionString returned %x\n", hr);
        ok(count > 1, "GetVersionString returned count %u\n", count);

        count = 0xdeadbeef;
        hr = ICLRRuntimeInfo_GetVersionString(runtime_info, ((void*)0), &count);
        ok(hr == S_OK, "GetVersionString returned %x\n", hr);
        ok(count > 1 && count != 0xdeadbeef, "GetVersionString returned count %u\n", count);

        count = MAX_PATH;
        hr = ICLRRuntimeInfo_GetVersionString(runtime_info, buf, &count);
        ok(hr == S_OK, "GetVersionString returned %x\n", hr);
        ok(count > 1, "GetVersionString returned count %u\n", count);

        trace("runtime found: %s\n", wine_dbgstr_w(buf));

        ICLRRuntimeInfo_Release(runtime_info);

        IUnknown_Release(unk);
    }

    ok(hr == S_FALSE, "IEnumUnknown_Next returned %x\n", hr);

    IEnumUnknown_Release(runtime_enum);
}
