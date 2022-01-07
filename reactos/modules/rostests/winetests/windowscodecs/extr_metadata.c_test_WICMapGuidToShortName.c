
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char WCHAR ;
typedef int UINT ;
typedef int HRESULT ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int E_INVALIDARG ;
 int GUID_MetadataFormatUnknown ;
 int GUID_NULL ;
 int HRESULT_FROM_WIN32 (int ) ;
 int S_OK ;
 int WICMapGuidToShortName (int *,int,unsigned char*,int*) ;
 int WINCODEC_ERR_PROPERTYNOTFOUND ;
 int lstrcmpW (unsigned char*,unsigned char const*) ;
 int ok (int,char*,int) ;
 int wine_dbgstr_w (unsigned char*) ;

__attribute__((used)) static void test_WICMapGuidToShortName(void)
{
    static const WCHAR unkW[] = { 'u','n','k',0 };
    static const WCHAR unknownW[] = { 'u','n','k','n','o','w','n',0 };
    HRESULT hr;
    UINT len;
    WCHAR name[16];

    name[0] = 0;
    len = 0xdeadbeef;
    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 8, name, &len);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(len == 8, "got %u\n", len);
    ok(!lstrcmpW(name, unknownW), "got %s\n", wine_dbgstr_w(name));

    name[0] = 0;
    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 8, name, ((void*)0));
    ok(hr == S_OK, "got %#x\n", hr);
    ok(!lstrcmpW(name, unknownW), "got %s\n", wine_dbgstr_w(name));

    len = 0xdeadbeef;
    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 8, ((void*)0), &len);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(len == 8, "got %u\n", len);

    len = 0xdeadbeef;
    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 0, ((void*)0), &len);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(len == 8, "got %u\n", len);

    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 0, ((void*)0), ((void*)0));
    ok(hr == S_OK, "got %#x\n", hr);

    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 8, ((void*)0), ((void*)0));
    ok(hr == S_OK, "got %#x\n", hr);

    hr = WICMapGuidToShortName(&GUID_NULL, 0, ((void*)0), ((void*)0));
    ok(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);

    name[0] = 0;
    len = 0xdeadbeef;
    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 4, name, &len);
    ok(hr == HRESULT_FROM_WIN32(ERROR_INSUFFICIENT_BUFFER), "got %#x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);
    ok(!lstrcmpW(name, unkW), "got %s\n", wine_dbgstr_w(name));

    name[0] = 0;
    len = 0xdeadbeef;
    hr = WICMapGuidToShortName(&GUID_MetadataFormatUnknown, 0, name, &len);
    ok(hr == E_INVALIDARG, "got %#x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);
    ok(!name[0], "got %s\n", wine_dbgstr_w(name));

    hr = WICMapGuidToShortName(((void*)0), 8, name, ((void*)0));
    ok(hr == E_INVALIDARG, "got %#x\n", hr);
}
