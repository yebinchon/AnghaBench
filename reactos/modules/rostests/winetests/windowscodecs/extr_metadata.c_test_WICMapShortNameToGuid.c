
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char WCHAR ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 scalar_t__ E_INVALIDARG ;
 int GUID_MetadataFormatUnknown ;
 int GUID_MetadataFormatXMP ;
 int GUID_NULL ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ WICMapShortNameToGuid (unsigned char const*,int *) ;
 scalar_t__ WINCODEC_ERR_PROPERTYNOTFOUND ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_WICMapShortNameToGuid(void)
{
    static const WCHAR unkW[] = { 'u','n','k',0 };
    static const WCHAR xmpW[] = { 'x','m','p',0 };
    static const WCHAR XmPW[] = { 'X','m','P',0 };
    static const WCHAR unknownW[] = { 'u','n','k','n','o','w','n',0 };
    HRESULT hr;
    GUID guid;

    hr = WICMapShortNameToGuid(((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = WICMapShortNameToGuid(((void*)0), &guid);
    ok(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = WICMapShortNameToGuid(unknownW, ((void*)0));
    ok(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = WICMapShortNameToGuid(unkW, &guid);
    ok(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);

    hr = WICMapShortNameToGuid(unknownW, &guid);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(IsEqualGUID(&guid, &GUID_MetadataFormatUnknown), "got %s\n", wine_dbgstr_guid(&guid));

    hr = WICMapShortNameToGuid(xmpW, &guid);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(IsEqualGUID(&guid, &GUID_MetadataFormatXMP), "got %s\n", wine_dbgstr_guid(&guid));

    guid = GUID_NULL;
    hr = WICMapShortNameToGuid(XmPW, &guid);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(IsEqualGUID(&guid, &GUID_MetadataFormatXMP), "got %s\n", wine_dbgstr_guid(&guid));
}
